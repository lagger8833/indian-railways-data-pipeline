CREATE SCHEMA GOLD;

----------------------------
-- CREATE GOLD VIEWS      -- 
----------------------------

CREATE VIEW GOLD.TRAIN_INFO 
AS 
SELECT * FROM OPENROWSET(
    BULK 'https://indianrailwaystorage.blob.core.windows.net/silver/train_info/',
    FORMAT='PARQUET'
) AS TRAIN_INFO;

CREATE VIEW GOLD.TRAIN_SCHEDULE
AS 
SELECT * FROM OPENROWSET(
    BULK 'https://indianrailwaystorage.blob.core.windows.net/silver/train_schedule/',
    FORMAT='PARQUET'
) AS TRAIN_SCHEDULE;