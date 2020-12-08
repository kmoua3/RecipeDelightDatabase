DROP DATABASE IF EXISTS recipedelight;
CREATE DATABASE IF NOT EXISTS recipedelight;
USE recipedelight;

DROP TABLE IF EXISTS Person;
CREATE TABLE Person (
    PersonID INT NOT NULL,
    FName VARCHAR(10) DEFAULT NULL,
    LName VARCHAR(10) DEFAULT NULL,
    StreetAddress VARCHAR(20) DEFAULT NULL,
    City VARCHAR(15) DEFAULT NULL,
    State VARCHAR(2) DEFAULT NULL,
    Zip INT DEFAULT NULL,
    Phone VARCHAR(12) DEFAULT NULL,
    Email VARCHAR(30) DEFAULT NULL,
    PRIMARY KEY (PersonID)
);

DROP TABLE IF EXISTS Chef;
CREATE TABLE Chef (
ChefID INT NOT NULL,
Specialty VARCHAR(10) DEFAULT NULL,
Salary VARCHAR(10) DEFAULT NULL,
PRIMARY KEY (ChefID)
);

DROP TABLE IF EXISTS Student;
CREATE TABLE Student (
StudentID INT NOT NULL,
GradDate DATE DEFAULT NULL,
Major VARCHAR(20) DEFAULT NULL,
PRIMARY KEY (StudentID)
);

DROP TABLE IF EXISTS Recipes;
CREATE TABLE Recipes (
RecipeID INT NOT NULL,
NumServed INT DEFAULT NULL,
Cuisine VARCHAR(10) DEFAULT NULL,
Category VARCHAR(20) DEFAULT NULL,
PubDate DATE DEFAULT NULL,
RecipeName VARCHAR(15) DEFAULT NULL,
Ingredients VARCHAR(20) DEFAULT NULL,
IngredientsQuantities INT DEFAULT NULL,
SpecialTools VARCHAR(10) DEFAULT NULL,
Instructions VARCHAR(20) DEFAULT NULL,
Awards VARCHAR(3) DEFAULT NULL,
PRIMARY KEY (RecipeID)
);

DROP TABLE IF EXISTS eCookBook;
CREATE TABLE eCookBook (
eCookBookID INT NOT NULL,
PRIMARY KEY (eCookBookID)
);

INSERT INTO Person (PersonID, FName, LName, StreetAddress, City, State, Zip, Phone, Email)
VALUES (1, 'Ned', 'Flanders', '21 Jump St.', 'Oakland', 'CA', 90210, '707-369-5465', 'nedflanders@gmail.com');

INSERT INTO Person (PersonID, FName, LName, StreetAddress, City, State, Zip, Phone, Email)
VALUES (2, 'Homer', 'Simpson', '223 Scope Rd.', 'Springfield', 'IL', 53621, '586-223-9588', 'homey@gmail.com');

INSERT INTO Person (PersonID, FName, LName, StreetAddress, City, State, Zip, Phone, Email)
VALUES (3, 'Pail', 'Bucket', '911 Well St.', 'Seattle', 'OR', 84509, '645-978-4465', 'getmoney@gmail.com');

INSERT INTO Chef (ChefID, Specialty, Salary)
VALUES (1, 'Head Chef', '160,000');

INSERT INTO Student (StudentID, GradDate, Major)
VALUES (25, '2020-12-16', 'Architecture');

INSERT INTO Student (StudentID, GradDate, Major)
VALUES (8, '2022-05-14', 'Dance');

INSERT INTO Recipes (RecipeID, NumServed, Cuisine, Category, PubDate, RecipeName, Ingredients, IngredientsQuantities, SpecialTools, Instructions, Awards)
VALUES (1, 5, 'Korean', 'Entre', '2010-02-14', 'Beef Bulgogi', 'Korean-Based', '6', 'None', 'Look at eCookBook', 'Yes');

INSERT INTO Recipes (RecipeID, NumServed, Cuisine, Category, PubDate, RecipeName, Ingredients, IngredientsQuantities, SpecialTools, Instructions, Awards)
VALUES (2, 12, 'Chinese', 'Entre', '1994-01-01', 'Fried Rice', 'Chinese-Based', '8', 'None', 'Look at eCookBook', 'No');

INSERT INTO eCookBook (eCookBookID)
VALUES (31);

CREATE VIEW checkID
AS SELECT PersonID, ChefID, StudentID, RecipeID, eCookBookID
FROM Person, Chef, Student, Recipes, eCookBook;

SELECT * FROM Person;
SELECT * FROM Chef;
SELECT * FROM Student;
SELECT * FROM Recipes;
SELECT * FROM eCookBook;
SELECT * FROM checkID;