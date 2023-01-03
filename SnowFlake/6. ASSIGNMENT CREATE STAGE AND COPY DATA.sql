CREATE OR REPLACE STAGE EXERCISE_DB.PUBLIC.exercise_stage 
url='s3://snowflake-assignments-mc/loadingdata/';

LIST @EXERCISE_DB.PUBLIC.exercise_stage;

COPY INTO EXERCISE_DB.PUBLIC.CUSTOMERS 
    FROM @EXERCISE_DB.PUBLIC.exercise_stage
    file_format= (type = csv field_delimiter=';' skip_header=1);

