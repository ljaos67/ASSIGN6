-- Leonart Jaos | Z1911688
-- 02/26/2021
-- CSCI 466 SECTION 0001
-- ASSING 06 SQL script
------------------------------------------------------------------------------------------------------------
 /* 1). Run a statement that will remove all of the tables that will be created below. This will allow the script to be run again without any errors caused by existing tables */
DROP TABLE Visit;
DROP TABLE Dog;
/* 2). Create a table called Dog with a dog id, a breed, a name, and a weight. The id of the dog should be the
primary key, and should be automatically assigned the next available value when inserting a new row
into the table */
CREATE TABLE Dog (
	Dogid  int      NOT NULL AUTO_INCREMENT,
	breed  CHAR(50) NOT NULL,
	name   CHAR(20) NOT NULL,
	weight int,

	PRIMARY KEY (Dogid)
);
/* 3). Put six rows into the Dog table with example data. Make up the data yourself */
INSERT INTO Dog
	(breed, name, weight)
	VALUES('Golden Retriever',
		'Lily',
		'70');
INSERT INTO Dog
	(breed, name, weight)
	VALUES('Labrador',
		'Annie',
		'65');
INSERT INTO Dog
	(breed, name, weight)
	VALUES('Bulldog',
		'Jerry',
		'50');
INSERT INTO Dog
	(breed, name, weight)
	VALUES('Bull Terrier',
		'Ozzy',
		'62');
INSERT INTO Dog
	(breed, name, weight)
	VALUES('Pug',
		'Tommy',
		'16');
INSERT INTO Dog
	(breed, name, weight)
	VALUES('Maltese',
		'Pip',
		'5');
/* 4). Run the command DESCRIBE Dog; */
DESCRIBE Dog;
/* 5). Run the command SELECT * FROM Dog; */
SELECT * FROM Dog;
/* 6). Create a table called Visit that contains a visit id as primary key (this should take the next available
key value when a new row is added). It should also have a foreign key that references a row in the dog
table, and attributes to hold the date that the visit took place and how long it lasted */
CREATE TABLE Visit (
	Visitid     int      NOT NULL AUTO_INCREMENT,
	Appointment date     NOT NULL,
	Duration    int      NOT NULL,
	Dogid       int      NOT NULL,

	PRIMARY KEY (Visitid),
	FOREIGN KEY (Dogid) REFERENCES Dog(Dogid)
);
/* 7). Put exactly nine new rows into the Visit table. Since there are only five dogs, this means that some
dogs will have multiple visits. */
INSERT INTO Visit
	(Appointment, Duration, Dogid)
	VALUES('2021-01-20',
		'1',
		'1');
INSERT INTO Visit
	(Appointment, Duration, Dogid)
	VALUES('2021-01-20',
		'2',
		'3');
INSERT INTO Visit
	(Appointment, Duration, Dogid)
	VALUES('2021-01-20',
		'1',
		'2');
INSERT INTO Visit
	(Appointment, Duration, Dogid)
	VALUES('2021-01-21',
		'1',
		'2');
INSERT INTO Visit
	(Appointment, Duration, Dogid)
	VALUES('2021-01-22',
		'2',
		'5');
INSERT INTO Visit
	(Appointment, Duration, Dogid)
	VALUES('2021-01-22',
		'1',
		'4');
INSERT INTO Visit
	(Appointment, Duration, Dogid)
	VALUES('2021-01-25',
		'1',
		'1');
INSERT INTO Visit
	(Appointment, Duration, Dogid)
	VALUES('2021-01-25',
		'1',
		'6');
INSERT INTO Visit
	(Appointment, Duration, Dogid)
	VALUES('2021-01-25',
		'1',
		'4');
/* 8). Run the command DESCRIBE Visit; */
DESCRIBE Visit;
/* 9). Run the command SELECT * FROM Visit; */
SELECT * FROM Visit;
/* 10). Add a column to the Visit table to hold how much the veterinarian is billing for the visit */
ALTER TABLE Visit ADD Charge DOUBLE;
/* 11). Change the value for the newly-added attribute in several of the existing rows. There are several
date/time functions available in SQL, and you can choose to use any that are appropriate */
UPDATE Visit
	SET Charge = 100.00
	WHERE Dogid = 6 OR Dogid = 5;
UPDATE Visit
	SET Charge = 200.00
	WHERE Dogid = 4;
UPDATE Visit
	SET Charge = 150.00
	WHERE Dogid <= 3;
/* 12). Run the command SELECT * FROM Visit; again */
SELECT * FROM Visit;
