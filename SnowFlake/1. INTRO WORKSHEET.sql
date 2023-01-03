CREATE OR REPLACE WAREHOUSE COMPUTE_WH
WITH
WAREHOUSE_SIZE=XSMALL
MAX_CLUSTER_COUNT=3
AUTO_SUSPEND = 300
AUTO_RESUME = TRUE
INITIALLY_SUSPENDED=TRUE
COMMENT = 'THIS IS FIRST WAREHOUSE CREATED BY SQL';

-- Create a database from the share.
--create database snowflake_sample_data from share sfc_samples.sample_data;

-- Grant the PUBLIC role access to the database.
-- Optionally change the role name to restrict access to a subset of users.
--grant imported privileges on database snowflake_sample_data to role public;

SELECT * FROM snowflake_sample_data.TPCH_SF1.CUSTOMER;

DROP WAREHOUSE COMPUTE_WH;