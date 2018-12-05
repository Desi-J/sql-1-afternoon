-- QUESTION 1

create table person (
  ID integer primary key autoincrement,
  Name string,
  Age integer,
  Height interger, 
  City string,
  FavoriteColor string
  );
 
 insert into person (Name, Age, Height, City, FavoriteColor) values ('Bob', 27, 180, 'LA', 'green' );  
 insert into person (Name, Age, Height, City, FavoriteColor) values ('Desi', 25, 165, 'Phoenix', 'purple' );
 insert into person (Name, Age, Height, City, FavoriteColor) values ('Cheng', 23, 165, 'Phoenix', 'blue');  
 insert into person (Name, Age, Height, City, FavoriteColor) values ('Tyler', 30, 170, 'Toronto', 'orange');  
 insert into person (Name, Age, Height, City, FavoriteColor) values ( 'Daniel', 35, 200, 'Phoenix', 'red'); 
 
 select * from person;
 select Height from person order by Height desc;
 select Height from person order by Height asc;

select Age from person order by Age desc;
select Age from person where Age > 20;
select Age from person where Age = 18;
select Age from person where Age > 20 or Age < 30;
select Age from person where Age != 27;

select FavoriteColor from person where FavoriteColor != 'red';
select FAvoriteColor from person where FavoriteColor != 'red' or FavoriteColor != 'blue';
select FavoriteColor from person where FavoriteColor = 'orange' or FavoriteColor = 'green';
select FavoriteColor from person where FavoriteColor in ('orange', 'green', 'blue');
select FAvortieColor from person where FavoriteColor in ('yellow', 'purple');



-- QUESTION 2


create table orders (
  PersonID ,
  ProductName string,
  ProductPrice float,
  Quantity integer
);

insert into orders ( PersonID, ProductName, ProductPrice, Quantity) values (1, 'chocolate', 1, 500 );
insert into orders ( PersonID, ProductName, ProductPrice, Quantity) values (1, 'gameboy', 50, 75);
insert into orders ( PersonID, ProductName, ProductPrice, Quantity) values (2, 'pizza', 8, 40);
insert into orders ( PersonID, ProductName, ProductPrice, Quantity) values (2, 'hdmi_cable', 12, 10);
insert into orders ( PersonID, ProductName, ProductPrice, Quantity) values (3, 'kitten', .75, 4);

select * from orders;
select sum(Quantity) from orders;
select sum(ProductPrice) from orders;
select sum(ProductPrice) from orders where PersonID = 1;



-- QUESTION 3

insert into Artist (Name) values ('Chevelle');
insert into Artist (Name) values ('Kittens');

select * from Artist  order by Name asc limit 5; 

select * from Artist where Name Like 'Black%';
select * from Artist where Name Like '%Black%';


-- QUESTION 4
select LastName, FirstName from Employee where City = 'Calgary'; 
select FirstName, LastName, Max(BirthDate) from Employee;  
select FirstName, LastName, Min(BirthDate) from Employee;
select from Employee where ReportsTo = 2;
select count(City) from Employee where City = 'Lethbridge';


-- QUESTION 5
select * from Invoice where BillingCountry = 'USA';
select max(Total) from Invoice;
select min(Total) from Invoice;
select count(Total) from Invoice where Total > 5;
select count(Total) from Invoice where Total < 5;
select count(BillingState) from Invoice where BillingState in ('CA', 'TX', 'AZ');
select avg(Total) from Invoice;
select sum(Total) from Invoice;
