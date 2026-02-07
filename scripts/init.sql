/*
=============================================================
Create Database and Schemas (PostgreSQL version)
=============================================================
Script Purpose:
    This script drops and recreates a database named 'datawarehouse'.
    It then creates three schemas inside it: 'bronze', 'silver', and 'gold'.

WARNING:
    Running this script will drop the entire 'datawarehouse' database if it exists.
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

-- Connect to a database other than 'datawarehouse' (e.g., default 'postgres')
-- because you cannot drop a database you are currently connected to.

-- Drop and recreate the 'datawarehouse' database
DROP DATABASE IF EXISTS datawarehouse;
CREATE DATABASE datawarehouse;

-- Now connect to the new database (done outside SQL, e.g. in psql: \c datawarehouse)

-- Create Schemas inside 'datawarehouse'
CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;
