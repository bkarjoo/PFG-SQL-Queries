# PFG-SQL-Queries

* CreateTable.sql
 * creates a new table with all the fields
 * import into this table using SQL Server Mgt Studio's Excel Import Feature
 * use the blotter saved as SQL format
 * import into new table
 * user import script to transfer from table to table (see below)  

* Import.sql
 * imports Excel imported table into main table
* IdentifyDuplicateImports.sql
 * returns all the duplicate imports having same runId
* RemoveDuplicateImports.sql
 * removes one of the duplicate runIds. Run IdentifyDuplicateImports.sql after running to make sure none exist.
* IdentifyDuplicateBacktests.sql
 * returns all the live runs for which there are more than one backtests
* RemoveDuplicateBacktests.sql
 * remove extra backtests. Run IdentifyDuplicateBacktests.sql after running to make sure none exist.
* PR_LiveVsBt.sql
 * returns the final tracking result. 
