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