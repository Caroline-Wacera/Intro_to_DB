import mysql.connector
from mysql.connector import Error

try:
    # Connect to MySQL server (update with your MySQL username and password)
    connection = mysql.connector.connect(
        host="localhost",
        user="root",  # Replace with your MySQL username
        password="Sukawaka4#"  # Replace with your MySQL password
    )

    if connection.is_connected():
        cursor = connection.cursor()
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as mysql_error:
    print(f"Error connecting to MySQL: {mysql_error}")

except Error as e:
    print(f"Error connecting to MySQL: {e}")

finally:
    # Close connection properly
    if 'cursor' in locals():
        cursor.close()
    if 'connection' in locals() and connection.is_connected():
        connection.close()