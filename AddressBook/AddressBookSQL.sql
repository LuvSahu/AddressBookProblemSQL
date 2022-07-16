CREATE DATABASE ADDRESSBOOK_SERVICES;

-------UC2-create table for addressbook servoces -----------
CREATE TABLE AddressBook(
FirstName varchar(200),
LastName varchar(200),
Address varchar(1000),
City char(100),
State char(100),
Zip bigint,
PhoneNumber bigint,
Email varchar(200)

);

INSERT INTO AddressBook
VALUES('Luv','Sahu','Shan Road','Jaipur','Rajasthan',560065,5243454345,'abc@gmail.com'),
('Deepak','Saini','NEB Road','Dehli','Dehli',560066,1323567775,'duf@gmail.com'),
('Atul','Gupta','Katla Road','Ajmer','Rajasthan',450065,5478908765,'lip@gmail.com'),
('Rohit','katariya','Bhagat Singh Road','Jaipur','Rajasthan',660065,5243458745,'jkl@gmail.com');


UPDATE AddressBook set PhoneNumber=8502012867 where FirstName='Luv';
UPDATE AddressBook set State='Noida',City='Haryana' where FirstName='Rohit';

select * from AddressBook;

Delete From AddressBook where LastName='Saini';

Select * from AddressBook;

select * from AddressBook;
-----------inserted some more data to execute the uc--------------
INSERT INTO AddressBook
Values('Rahul','Raj','9th line Road','Kota','Rajasthan',560087,1234567897,'lkj@gmail.com'),
('Rishi','Dutt','Main Road','Ajmer','Rajasthan',560097,1234567807,'omn@gmail.com'),
('Shivam','Raj','145 Block Shan Road','Nuh','Haryana',561237,1653267897,'ytr@gmail.com');
-------------UC6-retrive the person bolonging to coty or state--------------
SELECT FirstName From AddressBook where  City='Ajmer' or State='Rajasthan';

-------UC7-Ability to count the Size of the addressBook by state and city------------
SELECT COUNT(FirstName) as AddressBookCount,State,City from AddressBook group by State,City;

----------UC8 Retrive the entires sorted alphabetically by the persons name for given city--------
SELECT FirstName,City from AddressBook ORDER BY FirstName;

----to retrive all the data alphabetically order by firstname--------
SELECT * from AddressBook ORDER BY FirstName;

----to retrive all the data alphabetically order by City--------
SELECT * from AddressBook ORDER BY City;

-----UC9-Identify addressbook with name and type----------
ALTER TABLE AddressBook
ADD Type Varchar(200);

Select * from AddressBook;
Insert into AddressBook(FirstName,LastName ,Address,City,State,Zip,PhoneNumber,Email) Values('Sachin','Kumar','12th main','Bengaluru','Karnataka',456765,9876545678,'stu@gmail.com') ------where FirstName='Null';

UPDATE AddressBook set Type='Friend' where FirstName='Sachin';
UPDATE AddressBook set Type='Profession' where FirstName='Rohit';
UPDATE AddressBook set Type='Friend' where FirstName='Rishi';
UPDATE AddressBook set Type='Profession' where FirstName='Shivam';
UPDATE AddressBook set Type='Family' where FirstName='Atul';
UPDATE AddressBook set Type='Friend' where FirstName='Rahul';
UPDATE AddressBook set Type='Me' where FirstName='Luv';

---------UC10-Ability to get the number count by persons-----------
SELECT COUNT(Type) as NumberOfPersons from AddressBook ;

----------uc11 - ability to add the person to both the family and friends----
INSERT INTO AddressBook
VALUES('Siyram','Chaudhary','6th cross','Gurgaon','Haryana',765434,457545809,'vwx@gmail.com','Friend'),
('Priyanka','Chaudhary','6th cross','Patna','Bihar',765434,457545809,'vwx@gmail.com','Family')

Select * from AddressBook;
