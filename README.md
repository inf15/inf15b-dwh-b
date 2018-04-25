# inf15b-dwh-b
Data Warehousing Projekt, Gruppe B

# Importing excel data into the landing zone
The Import was accomplished by using the Jaspersoft ETL tool.
You can download it [here](https://community.jaspersoft.com/community-download)

## Running import jobs
The workspace containing all necessary jobs is included in this repository under `workspace`.
One job is always responsible for the import of *one* excel sheet of the excel file.
In order to run the jobs, the path to the excel file must be updated for each job.

The DB Connection must be configured individually to perform a run. Tested with MariaDB

## ETL to CDWH
The ETL Jobs for getting data from the integration zone to the 
CoreDataWareHouse (CDWH) expect a MySQL-Server running on 192.168.57.250:3306
which has a Database ´´´database_project´´´ created and the default user credentials
used in this project are expected to work on the databse. The database must contain
the tables created by filling the Integration Zone (abbreviated IZ).
