/* 
=================================================
Create Database and Schemas 
=================================================
Script porpose:
This script creates a new database named 'Datawarehouse' agter checking if it a;ready exists.
If the databse exists, it is dropped and recreated.Adedeitionally, the script sets up three schemas
within the database:'bronze' ,'silver' , 'gold'.

WARNING:
Running this scriot will drop the entire 'DataWarehouse' database if it exists 
All data in tghe database will be permanently deleted.Proceed with Caution
and ensure you have proper backups running this script.
*/

USE MASTER;
GO

--Drop and recreate the 'DataWarehouse ' database
IF EXISTS (SELECT 1 FROM sys.database WHERE name='DataWarehouse' )
BEGIN
ALTER DATABASE DataWarehouse SET SINGLE USER WITH ROLLBACK TIMEDATE;
DROP DATABASE DataWarehouse;
GO

USE DataWarehouse
GO

--Create Schemas
CREATE SCHEMA bronze ;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO

