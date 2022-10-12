CREATE DATABASE DrugstoreApp 

USE DrugstoreApp

CREATE TABLE Owners(
	Id int PRIMARY KEY IDENTITY,
	Name nvarchar(50) NOT NULL,
	Surname nvarchar(50) NOT NULL

)



CREATE TABLE Drugstories(
	Id int PRIMARY KEY IDENTITY,
	Name nvarchar(50) NOT NULL,
	Address nvarchar(50) NOT NULL UNIQUE,
	ContactNumber nvarchar(50)  UNIQUE,
	CreationDate datetime,
	OwnerId int FOREIGN KEY REFERENCES Owners(Id)
)

CREATE TABLE Druggists(
	Id int PRIMARY KEY IDENTITY,
	Name nvarchar(50) NOT NULL,
	Surname nvarchar(50) NOT NULL,
	Age int,
	Experience int,
	DrugstoriesId int FOREIGN KEY REFERENCES Drugstories(Id)
)

CREATE TABLE Drugs(
	Id int PRIMARY KEY IDENTITY,
	Name nvarchar(50) NOT NULL,
	Price double precision,
	Count int,
	DrugstoriesId int FOREIGN KEY REFERENCES Drugstories(Id)
)





INSERT INTO Owners
VALUES('Tural','Ismayilov'),
       ('Emil','Quluzade')


INSERT INTO Drugstories
VALUES('Zeferan','SABUNCHU','+994998596919','2022-10-11',1),
	  ('Zeytun','SAHIL','+994999999999','2022-10-10',2)
	
INSERT INTO Druggists
VALUES('Ceyhun','Celilov',20,5,1),
	  ('Xasay','Musayev',20,5,2)

INSERT INTO Drugs
VALUES('Nimesil',15.5,10,1),
	  ('Nosba',2.5,10,2)


SELECT*FROM Owners
SELECT*FROM Drugstories
SELECT*FROM Druggists
SELECT*FROM Drugs