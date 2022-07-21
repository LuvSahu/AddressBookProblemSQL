select * from AddressBook;
-----------inserted some more data to execute the uc--------------
INSERT INTO AddressBook
Values('Rahul','Raj','9th line Road','Kota','Rajasthan',560087,1234567897,'lkj@gmail.com'),
('Rishi','Dutt','Main Road','Ajmer','Rajasthan',560097,1234567807,'omn@gmail.com'),
('Shivam','Raj','145 Block Shan Road','Nuh','Haryana',561237,1653267897,'ytr@gmail.com');

-------------UC6-retrive the person bolonging to coty or state--------------
SELECT FirstName From AddressBook where  City='Ajmer' or State='Rajasthan';
