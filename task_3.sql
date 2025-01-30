-- Select all tables in the alx_book_store database
SELECT table_name 
FROM INFORMATION_SCHEMA.TABLES 
WHERE table_schema = DATABASE();