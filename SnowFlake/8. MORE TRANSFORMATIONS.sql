CREATE OR REPLACE TABLE OUR_FIRST_DB.PUBLIC.ORDERS_EX (
    ORDER_ID VARCHAR(30),
    AMOUNT INT,
    PROFIT INT,
    PROFITABLE_FLAG VARCHAR(30)
    )

COPY INTO OUR_FIRST_DB.PUBLIC.ORDERS_EX (ORDER_ID,PROFIT)
FROM (SELECT
        s.$1,
        s.$3
      from @MANAGE_DB.external_stages.aws_stage s )
 file_format= (type = csv field_delimiter=',' skip_header=1)
 files=('OrderDetails.csv');
 
 SELECT * FROM OUR_FIRST_DB.PUBLIC.ORDERS_EX
 
 CREATE OR REPLACE TABLE OUR_FIRST_DB.PUBLIC.ORDERS_EX (
    ORDER_ID NUMBER autoincrement start 1 increment 1,
    AMOUNT INT,
    PROFIT INT,
    PROFITABLE_FLAG VARCHAR(30)
    )

COPY INTO OUR_FIRST_DB.PUBLIC.ORDERS_EX (AMOUNT,PROFIT)
FROM (SELECT
        s.$2,
        s.$3
      from @MANAGE_DB.external_stages.aws_stage s )
 file_format= (type = csv field_delimiter=',' skip_header=1)
 files=('OrderDetails.csv');
 
 SELECT * FROM OUR_FIRST_DB.PUBLIC.ORDERS_EX
     