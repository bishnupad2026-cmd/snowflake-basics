USE WAREHOUSE LEARN_WH;
USE SCHEMA LEARN_DB.RETAIL;

-- Run 02_load.sql first. This deletes a row, then reads the table as it was 5 minutes ago.
DELETE FROM ORDERS WHERE order_id = 2;

SELECT * FROM ORDERS ORDER BY order_id;

SELECT * FROM ORDERS AT(OFFSET => -60 * 5) ORDER BY order_id;
