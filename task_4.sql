-- Select the database
USE alx_book_store;

-- Retrieve the full structure of the books table without DESCRIBE, EXPLAIN, or ANALYZE
SELECT COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_KEY, EXTRA 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_SCHEMA = 'alx_book_store' AND TABLE_NAME = 'books';