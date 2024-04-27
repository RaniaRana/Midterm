from flask import Flask, request, render_template
import mysql.connector

app = Flask(__name__)

# MySQL Configuration
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': 'root',
    'database': 'ProductDB'
}

# Connect to MySQL
conn = mysql.connector.connect(**db_config)
cursor = conn.cursor()

# Route to render index.html
@app.route('/')
def index():
    category = request.args.get('category', 'Kadın')  # Default to 'Kadın'
    query = f"""
        SELECT p.Product_Name, p.Price, pi.Image_URL, p.New, p.Product_no
        FROM Product AS p
        LEFT JOIN (
            SELECT Product_ID, MIN(Image_URL) AS Image_URL
            FROM Product_Image
            GROUP BY Product_ID
        ) AS pi ON p.ID = pi.Product_ID
        LEFT JOIN Category AS c ON p.Category_ID = c.ID
        WHERE c.Name = %s AND p.New = 1
        GROUP BY p.Product_Name, p.Price, p.New, pi.Image_URL, p.Product_no
    """
    cursor.execute(query, (category,))
    data = [{
        'Product_Name': row[0],
        'Price': row[1],
        'Image_URL': row[2],
        'New': row[3],
        'Product_No' : row[4]
    } for row in cursor.fetchall()]
    return render_template('index1.html', data=data, active_category=category)


@app.route('/search')
def search():
    size = request.args.get('size', 'All Sizes')
    order = request.args.get('order', 'ASC')
    search_term = request.args.get('searchTerm', '')  # Default search term is 'üst'
    cur = conn.cursor()
    base_query = f"""
        FROM Product AS p
        LEFT JOIN (
            SELECT Product_ID, MIN(Image_URL) AS Image_URL
            FROM Product_Image
            GROUP BY Product_ID
        ) AS pi ON p.ID = pi.Product_ID
        LEFT JOIN Category AS c ON p.Category_ID = c.ID
        LEFT JOIN Product_Size AS ps ON p.ID = ps.Product_ID
        LEFT JOIN Size AS s ON ps.Size_ID = s.ID
        WHERE p.Product_Name LIKE '%{search_term}%'
    """

    if size.lower() == 'all sizes':
        query = f"""
            SELECT 
                p.Product_Name,
                c.Name AS Category_Name,
                p.Price,
                GROUP_CONCAT(DISTINCT s.Name ORDER BY s.Name ASC SEPARATOR ', ') AS Size_Names,
                SUM(ps.Number) AS Total_Stock_Number,
                pi.Image_URL,
                p.New,
                p.Product_no
            {base_query}
            GROUP BY p.ID, c.Name, p.Price, pi.Image_URL, p.New
            ORDER BY p.Price {order};
        """
    else:
        query = f"""
            SELECT DISTINCT
                p.Product_Name,
                c.Name AS Category_Name,
                p.Price,
                s.Name AS Size_Name,
                ps.Number AS Stock_Number,
                pi.Image_URL,
                p.New,
                p.Product_no
            {base_query}
            AND s.Name = '{size}' AND ps.Number > 0
            ORDER BY p.Price {order};
        """

    cur.execute(query)
    #results = [{
    #    'Product_Name': row[0],
    #    'Category_Name': row[1],
    #    'Price': row[2],
    #    'Size_Name_or_Names': row[3],
    #    'Stock_Number': row[4],
    #    'Image_URL': row[5],
    #    'New': row[6]
    #} for row in cursor.fetchall()]
    products = cur.fetchall()
    total_products = len(products)
    sql = f"""
        SELECT c.Name AS name, COUNT(p.Category_ID) AS count
        FROM Category AS c
        LEFT JOIN Product AS p ON p.Category_ID = c.ID
        WHERE p.Product_Name LIKE '%{search_term}%'
        GROUP BY c.Name, c.ID
        """
    cur.execute(sql)  # Safe parameterized query
    total_number = cur.fetchall()  # Fetch all results
    return render_template('search1.html', products=products, searchTerm=search_term, order=order, size=size, total_products=total_products, total_number=total_number)

@app.route('/product/<int:product_no>')
def product_detail(product_no):
    cursor = conn.cursor(dictionary=True)
    # Fetch product details
    detail_query = """
    SELECT 
        p.Product_Name,
        p.Product_no,
        c.Name AS Category_Name,
        p.Price
    FROM Product AS p
    LEFT JOIN Category AS c ON p.Category_ID = c.ID
    WHERE p.Product_no = %s;
    """
    cursor.execute(detail_query, (product_no,))
    product_details = cursor.fetchone()

    # Fetch product images
    images_query = """
    SELECT 
        i.Image_URL
    FROM Product AS p
    LEFT JOIN Product_Image AS i ON p.ID = i.Product_ID
    WHERE p.Product_no = %s;
    """
    cursor.execute(images_query, (product_no,))
    images = cursor.fetchall()

    # Check for specific category conditions
    sizes = []
    if product_details['Category_Name'] in ['Bebek', 'Çocuk']:
        sizes = ['94', '98', '104', '110']
    elif product_details['Category_Name'] in ['Home']:
        sizes = ['Standard',]
    else :
        sizes = ['S', 'M', 'L', 'XL']

    return render_template('detail.html', product=product_details, images=images, sizes=sizes)


if __name__ == '__main__':
    app.run(debug=True, port=5031)
