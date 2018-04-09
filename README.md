# inf15b-dwh-b
Data Warehousing Projekt, Gruppe B

# Importing excel data into the landing zone
The Import was accomplished by using the Jaspersoft ETL tool.
You can download it [here](https://community.jaspersoft.com/community-download)

## Running import jobs
The workspace containing all necessary jobs is included in this repository under `workspace`.
One job is always responsible for the import of *one* excel sheet of the excel file.
In order to run the jobs, the path to the excel file must be updated for each job.

The MariaDB Connection is configured for **port 3306**
