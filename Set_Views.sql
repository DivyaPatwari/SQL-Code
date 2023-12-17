
create database db_test;
use db_test

create table Agent_1( 
Agents varchar(100),
City varchar(50),
Occupation char (50),
Amount money
)

create table Agent_2( 
Agent_Names varchar(100),
Agent_City varchar(50),
Occupation char (50),
Amount money
)

delete from Agent_1
DELETE FROM Agent_2


insert into Agent_1 values('John', 'Pune', 'Clerk', 100),
						('Lee', 'Chennai', 'Service' , 200),
						('Mike', 'Mumbai', 'Contractor', 300),
						('King', 'Kolkata', 'Business', 400)

insert into Agent_2 values('John', 'Pune', 'Clerk', 100),
						('King', 'Kolkata', 'Business', 400),
						('Charlie', 'Noida', 'Business', 10000),
						('Tom', 'Delhi', 'Service', 2500)

-------------

select * from Agent_1

select * from Agent_2

select * from Agent_1
Union
select * from Agent_2
----------------

select * from Agent_1

select * from Agent_2

select * from Agent_1
Union All
select * from Agent_2
------------


select * from Agent_1
select * from Agent_2

select * from Agent_1
intersect
select * from Agent_2

-----------------
select * from Agent_1
select * from Agent_2



select * from Agent_2
except
select * from Agent_1


select * from Agent_1
select top 2 * from Agent_1 ORDER BY Amount desc


-------
--Views: to restrict data/ base table changes are reflected in VIEW and viceversa, normal view done on 1 table is easily updated, 
--complex view cretaed on 2 or more tables , sometimes updated, sometimes not,

create view Vw_Agent
as 
select top 3 * from Agent_1

select * from Agent_1
select * from Vw_Agent

--SP HELPTEXT Vw_Agent

create view Vw_Agent_2
as
select Agent_Names,Agent_City, Occupation from Agent_2

select * from Vw_Agent
select * from Vw_Agent_2

create view Non_Confidential_data_of_Agent_2
as
select Agent_Names,Agent_City, Occupation from Agent_2
select * from Non_Confidential_data_of_Agent_2

insert into Non_Confidential_data_of_Agent_2 
values('divya', 'pune', 'engineer')

select * from Non_Confidential_data_of_Agent_2

update Non_Confidential_data_of_Agent_2 
set Agent_names = 'Divya' 
where Agent_names = 'divya'

delete from Non_Confidential_data_of_Agent_2 where Agent_City= 'delhi'
select * from Non_Confidential_data_of_Agent_2

