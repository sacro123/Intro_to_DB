import mysql.connector

# mydb = mysql.connector.connect(host="localhost", user="root", passwd="1234")
# mycusor = mydb.cursor()
# mycusor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

try:
    # Connect to the MySQL server
    connection = mysql.connector.connect(
        host=hostname, user=username, password=password
    )

    # Create database (avoiding SE LECT/SH OW statements)
    cursor = connection.cursor()
    cursor.execute(f"CREATE DATABASE IF NOT EXISTS alx_book_store")

    # Commit the change
    connection.commit()

    # Print success message
    print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as err:
    # Handle errors (e.g., connection failure or existing database)
    print(f"Error creating database: {err}")

finally:
    # Close the connection (if established)
    if connection:
        connection.close()
        print("Connection closed.")
