-- Select the database
USE alx_book_store;

-- List all tables in alx_book_store
SELECT table_name 
FROM INFORMATION_SCHEMA.TABLES 
WHERE table_schema = 'alx_book_store';