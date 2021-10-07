USE master
GO
-------------------------------------------------
--> Restoring Adventure works
-------------------------------------------------
RESTORE DATABASE AdventureWorks2019
FROM DISK =  N'/app/AdventureWorks2019.bak'
WITH FILE = 1,
    MOVE N'AdventureWorks2017'
    TO  N'/var/opt/mssql/data/AdventureWorks2019.mdf',
    MOVE N'AdventureWorks2017_log'
    TO  N'/var/opt/mssql/data/AdventureWorks2019_log.ldf',
    NOUNLOAD,
    STATS = 5;
GO
-------------------------------------------------
--> Restoring Adventure DW works
-------------------------------------------------
RESTORE DATABASE AdventureWorksDW2019
FROM DISK =  N'/app/AdventureWorksDW2019.bak'
WITH FILE = 1,
    MOVE N'AdventureWorksDW2017'
    TO  N'/var/opt/mssql/data/AdventureWorksDW2019.mdf',
    MOVE N'AdventureWorksDW2017_log'
    TO  N'/var/opt/mssql/data/AdventureWorksDW2019_log.ldf',
    NOUNLOAD,
    STATS = 5;
-------------------------------------------------
--> Restoring Adventure DW works
-------------------------------------------------
RESTORE DATABASE AdventureWorksLT2019
FROM DISK =  N'/app/AdventureWorksLT2019.bak'
WITH FILE = 1,
    MOVE N'AdventureWorksLT2012_Data'
    TO  N'/var/opt/mssql/data/AdventureWorksLT2019.mdf',
    MOVE N'AdventureWorksLT2012_Log'
    TO  N'/var/opt/mssql/data/AdventureWorksLT2019_log.ldf',
    NOUNLOAD,
    STATS = 5;

-- RESTORE FILELISTONLY 
-- FROM DISK = '/var/opt/mssql/data/AdventureWorks2019.bak'
