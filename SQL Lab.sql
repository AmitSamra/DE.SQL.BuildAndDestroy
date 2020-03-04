# Creating databases

/*
Write the correct SQL statement to create a new database called myNewDB.
*/

CREATE SCHEMA myNewDB;

/*
Write the correct SQL statement to view all existing databases on your database server.
*/

SHOW DATABASES;

/*
Write the correct SQL statement to select the database myNewDB to run further queries against.
*/

USE myNewDB;


# Deleting databases

/*
Write the correct SQL statement to delete a database named myNewDB.
*/

DROP myNewDB;


# Creating tables

/*
Write the correct SQL statement to create a new table called Users, with an int field called UserID, 
and the following varchar fields of size 255: LastName, FirstName, Address, City
*/

CREATE TABLE users (
	UserID int,
	LastName varchar(255),
	FirstName varchar(255),
	Address varchar(255),
	City varchar(255)
);


# Deleting tables

/*
Write the correct SQL statement to delete a table called Users.
*/

DROP TABLE Users;

/*
Use the TRUNCATE statement to delete all data inside the Users table.
*/

TRUNCATE Users;


# Altering tables

/*
Add a column of type DATE called Birthday to the Users table.
*/

ALTER TABLE Users
ADD Birthday DATE;

/*
Delete the column Birthday from the Users table.
*/

ALTER TABLE Users
DROP Birthday;

/*
Add the varchar columns MiddleName, NickName, Email, Suffix, and BadgeID to the Users table, 
with size of 255, with the exception of Suffix which has a size of 64, using a single statement.
*/

ALTER TABLE Users
ADD (
	MiddleName varchar(255),
	NickName varchar(255),
	Email varchar(255),
	Suffix varchar(64),
	BadgeID varchar(255);
	);
/*
Delete the columns NickName and Suffix from the Users table, using a single statement.
*/

ALTER TABLE Users
DROP NickName, DROP Suffix;

/*
Rename the column MiddleName to Initial in the Users table, changing its size to 64.
*/

ALTER TABLE Users
CHANGE MiddleName Initial varchar(64);

/*
Rename the column FirstName to First_Name and LastName to Last_Name in the Users table, 
in one statement, maintaining their original settings.
*/

ALTER TABLE Users
CHANGE FirstName First_Name varchar(255),
CHANGE LastName Last_Name varchar(255);

/*
Write a query to display the columns and settings of the Users table.
*/

DESCRIBE Users;


# Inserting records

/*
Insert a new record in the Students table.
*/

INSERT INTO Students(StudentName, Address, City, PostalCode, Country)
VALUES ('Jane Doe', '57 Union St', 'Glasgow', 'G13R8', 'Scotland');

# or 

INSERT INTO Students
VALUES ('Jane Doe', '57 Union St', 'Glasgow', 'G13R8', 'Scotland');


# Updating Records

/*
Update the City column of all records in the Students table and set it to "Edinburgh".
*/

UPDATE Students
SET City = 'Edinburgh';

/*
Set the value of the City columns to "Edinburgh", but only the ones where the Country 
column has the value "Scotland".
*/

UPDATE Students
SET City = 'Edinburgh'
WHERE Country = 'Scotland';

/*
Update the City value and the Country value to "Edinburgh", "Scotland" in the Students 
table, for the Student whose ID is 35.
*/

UPDATE Students
SET City = 'Edinburgh'
SET Country = 'Scotland'
WHERE ID = 35;


# Deleting Records

/*
Delete all the records from the Students table where the Country value is "Scotland".
*/

DELETE FROM Students
WHERE Country = 'Scotland';

/*
Delete all the records from the Students table.
*/

DELETE FROM Students













