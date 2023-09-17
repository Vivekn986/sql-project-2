
DROP TABLE PROFILES;


CREATE TABLE Profiles (
	[profile_id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	first_name varchar(255) NULL,
	[last_name] varchar(255) NULL,
	[email] varchar(255) NOT NULL,
	[phone] varchar(255) NOT NULL,
	[city] varchar(255) NULL,
	[created_at] [date] NOT NULL,
	[gender] varchar(255) NOT NULL,
	[referral_code] varchar(255) NULL,
	[marital_status]  varchar(255) NULL);


  EXEC sp_help 'Profiles'; 

      SELECT * FROM information_schema.columns   
    WHERE table_name = 'Profiles';  

	

	SELECT * FROM PROFILES;
	
	
	set dateformat dmy;

	INSERT INTO Profiles ( FIRST_NAME,Last_name, email, phone ,city,created_at, gender , referral_code,marital_status )
	values('anusha','pariti','anusha.pariti@gmail.com',8105987404,'Bangalore','16-04-2015','F','7L5FZW','Y'),
	('Ashish','Singh','ashish.singh@gmail.com',9876890463,'Bangalore','23-05-2015','M','KF34MF','Y'),
	('Bhaskar','maheshwari','bhaskar.mah@gmail.com','9801834992','Bangalore','01-05-2015','M','5TYSHGF','N'),
	('Garima','yadav','garima0191@gmail.com',81059237004,'Bangalore','20-10-2015','F','5G5FQW','N'),
	('Tanvi','mann','tanvi.mann1907@gmail.com',9178352769,'Bangalore','16-02-2015','F','JSH48B','N'),
	('Harish','sahai','harish294all@gmail.com',9876548763,'Bangalore','11-11-2015','M','MKGI2W','Y'),
	('Kamal','gera','kamal0094@gmail.com',8105987404,'Bangalore','31-10-2015','M','MK34ER','N'),
	('Tushar','kapoor','tushar.kapoor21@gmail.com',8926537154,'Pune','12-12-2015','M','KLF12E','N'),
	('Shivshankar','das','sankar.shiva730@gmail.com','9801834992','Pune','06-10-2015','M','3RE5TY','Y'),
	('Aditi','jain','aditi.jain@sproxil.com',9873123456,'Pune','11-06-2015','F','5TPL4E','N'),
	('Deepa','sudhakar','sudhakar.deepa@gmail.com',7896785432,'Pune','15-09-2015','F','4RTYUIO','Y'),
	('Umang','parejiya','uparejiya@gmail.com',7896543674,'Pune','18-07-2015','M','6TY4WE','N'),
	('Mitali','gupta','mitali.gupta80@gmail.com',8796751238,'Pune','24-03-2015','F','5RTYU3','Y'),
	('Manisha','Yadav','maniyadav88@gmail.com',9867845182,'Delhi','27-01-2015','F','LKGHY6','N'),
	('Shivani','godha','shivani_go@nid.edu','9878673428','Delhi','19-02-2015','F','8NM4R','Y'),
	('Rajan','pandey','raajanpandey@gmail.com',8987647811,'delhi','04-09-2015','M','5TYUIO','N'),
	('Roosena','manuel','roseenasimimanuel@gmail.com',9875623345,'Delhi','13-04-2015','F','6TYHU','Y'),
	('Prabhjot','gill','prabhjotgill09@gmail.com',9800786688,'Delhi','30-12-2015','M','GHJK34','N'),
	('Ankita','sharma','ankita.anku96@gmail.com',9988789656,'Delhi','17-08-2015','F','TH67TY','Y'),
	('Karan','Singh','karan.singh@gmail.com',8976665768,'Delhi','15-09-2015','M','LRF34F','N');

		SELECT * FROM PROFILES;

		
----------------------------------------------------------------------


drop table Houses;


create table Houses 
(
[house_id] int NOT NULL identity(1,1) PRIMARY KEY 
,[house_type] varchar(255) NULL
,[bhk_type] varchar (255) NULL
,[bed_count] int NOT NULL
,[furnishing_type] varchar (255) NULL 
,[beds_vacant] int NOT NULL );

select * from Houses;

--constraint pk_Houses primary key (house_id)




insert into Houses (house_type,bhk_type,bed_count,furnishing_type,beds_vacant)
values ('Apartment','3 BHK',5,'unfurnished',2),
('Apartment','3 BHK',3,'unfurnished',1),
('Apartment','3 BHK',6,'fully-furnished',4),
('Apartment','2 BHK',2,'fully-furnished',0),
('Independent','4 BHK',4,'fully-furnished',2),
('Apartment','3 BHK',3,'semifurnished',1),
('Apartment','3 BHK',3,'semifurnished',0),
('Apartment','2 BHK',4,'fully-furnished',1),
('Independent','1 BHK',2,'unfurnished',0),
('Independent','3 BHK',3,'fully-furnished',1),
('Apartment','1 BHK',1,'unfurnished',0),
('Independent','1 BHK',2,'unfurnished',1),
('Independent','2 BHK',4,'unfurnished',2),
('Apartment','3 BHK',3,'fully-furnished',0),
('Independent','1 BHK',2,'unfurnished',1),
('Apartment','3 BHK',3,'fully-furnished',0),
('Independent','3 BHK',3,'fully-furnished',1),
('Independent','2 BHK',2,'fully-furnished',1),
('Independent','3 BHK',3,'fully-furnished',1),
('Independent','1 BHK',2,'unfurnished',2);

select * from houses;


----------------------------------------------

DROP TABLE Tenancy_histories ;

create table Tenancy_histories
(
[id] int NOT NULL identity (1,1) PRIMARY KEY 
,[profile_id] int NOT NULL
,[house_id] int NOT NULL
,[move_in_date] date NOT NULL
,[move_out_date] date  NULL
,[rent] int NOT NULL
,[bed_type] varchar(255) NULL
,[move_out_reason] varchar(255) NULL 
,constraint fk_Profiles2 foreign key(profile_id) references Profiles (profile_id)
,constraint fk_Houses1 foreign key(house_id) references Houses (house_id));

select * from Tenancy_histories;


set dateformat dmy;

insert into Tenancy_histories (profile_id ,house_id ,move_in_date , move_out_date, rent ,bed_type, move_out_reason)
values 
(1,5,'12-02-2015','30-04-2016',7500,'bed','MOVE_OUT'),
(2,2,'05-06-2015',NULL    ,11000 , 'room' , NULL ),
(3,4,'28-10-2015','28-11-2016',12000,'room','RENT_CHANGE'),
(4,1,'26-04-2015', NULL,8000,'bed', NULL),
(5,3,'15-05-2015','27-12-2015',9000,'bed','MOVE_OUT'),
(6,8,'25-12-2015', NULL,10200,'room', NULL),
(7,6,'20-11-2015', NULL,6500,'bed', NULL),
(8,7,'10-11-2015','31-12-2016',7200,'bed','MOVE_OUT'),
(9,9,'15-10-2015', NULL,7500,'bed', NULL),
(10,10,'20-06-2015', NULL,7500,'bed', NULL),
(11,19,'29-08-2015','14-06-2016',8000,'bed','INTERNAL_TRANSFER'),
(12,15,'24-02-2015', NULL,11000,'room', NULL),
(13,12,'25-02-2015', NULL,12000,'room', NULL),
(14,18,'07-01-2016','30-12-2016',13500,'room','MOVE_OUT'),
(15,13,'07-04-2015', NULL,6500,'bed', NULL),
(16,17,'23-04-2015', NULL,6500,'bed', NULL),
(17,14,'10-02-2015', NULL,10500,'room', NULL),
(18,16,'16-10-2015','04-09-2016',8000,'bed','MOVE_OUT'),
(19,20,'26-09-2015', NULL,7500,'bed', NULL),
(20,11,'30-09-2015', NULL,9500,'bed', NULL);


select * from Tenancy_histories;









----------------------------------------------



DROP TABLE ADDRESS;

create table Address
(
[ad_id] int NOT NULL identity (2,1) PRIMARY KEY
,[name] varchar (255) NULL
,[description] text NULL
,[pincode] int NOT NULL
,[city] varchar(255) NULL
,[house_id] int NOT NULL 
,constraint fk_Houses foreign key(house_id)
references Houses (house_id));



select * from Address;


insert into Address (name ,description ,pincode , city ,house_id)
values 
('Zaanz appartment','Sterling BrookSide, Opp. Kundalahalli Colony, ITPL Main Rd',560037,'bangalore',1),
('stag saptgiri','No.44,Ground floor,20th cross,Sector 2 HSR Layout,Bangalore.',560102,'bangalore',2),
('sri sai enclave','No.44,First floor,20th cross,Sector 2 HSR Layout.',560102,'bangalore',3),
('orchids building','D-208, Balaji Pristine Whitefield Main Road',560066,'bangalore',4),
('Fella homes','#11,Annaiya Reddy Rd, Narayana Reddy Layout,Phase 2,Electronic City',560100	,'bangalore',5),
('Juniper appartments','# 595/1, 1st Floor,1st A main, Domlur Layout',560038,'bangalore',6),
('UDB Building','Flat No: T1 Deccan Field Appartment Kunadanhalli main road',560037,'bangalore',7),
 ('Apoorva society','Flat No-202, Apoorva Apartment No-296 Vyalikaval House Building Cooperative Society Ltd Nagavara',561202,'Delhi',8),
('Stag saptgiri','Flat No-202, stag saptgiri No-26 phase2 Cooperative Society',560045,'Delhi',9),
('VaK Residency','302,#473 VAK Residency, B-Block, AECS Layout,Kundalahalli',456738,'Delhi',10),
('Sunshine hills','Flat no 3, water ville apartment R.galli',100234,'Delhi',11),
('Sri Sai appartment','2nd House, No-80/289, Sri Hari Darshan Nilaya, Ground Floor, Bellandur',560107,'Delhi',12),
('Barvika Residency	B105','1st floor, B block, Barvika Residency	',5610023,'Delhi',13),
('Nestaway building	#157','4th Cross, 1st Main Road, Lower Palace Orchard',546783,'Delhi',14),
('Windsor Plaza	#301','Windsor Plaza,ITPL',560025,'Pune',15),
('Indira society','No. 502, Indira Meadows, Arunodaya Colony',302017,'Pune',16),
('Sri Krishna Society','Flat No-211 Sri Krishna sai enclave, Hoodi village, beside Vivekananda Ashram, Mahadevapura post',560048,'Pune',17),
('uniworld	D1-1201','Uniworld Garden 2',543678,'Pune',18),
('Vinayaka residency','49, House 1 lathangi 2nd main vinayaka housing layout, RMV 2nd stage bhoopasandra',560094,'Pune',19),
('Sun city appartments','Majeera Diamond Towers,malad-west',5600263,'Pune',20);

select * from Address;

-----------------------------


DROP TABLE Referrals; 


create table Referrals
(
[ref_id] int NOT NULL identity (1,1) PRIMARY KEY 
,[referrer_bonus_amount] float NULL
,[referral_valid] tinyint NULL
,[valid_from] date NULL
,[valid_till] date NULL
,[profile_id] int NOT NULL 
,constraint fk_Profiles foreign key(profile_id)
references Profiles (profile_id));

select * from Referrals


set DATEFORMAT dmy;

insert into Referrals (referrer_bonus_amount ,referral_valid ,valid_from , valid_till ,profile_id)
values 
(2500,1,'05-07-2015','05-09-2015',2),
(2500,1,'05-07-2015','05-09-2015',3),
(1000,0,'13-12-2015','13-02-2016',5),
(2500,0,'25-04-2016','24-06-2016',6),
(1000,1,'01-07-2015','01-09-2015',10),
(2500,1,'12-05-2015','12-07-2015',12),
(2500,0,'05-08-2015','05-10-2015',13),
(1000,1,'05-02-2016','05-04-2016',20),
(2500,0,'12-08-2015','12-09-2015',2),
(1000,1,'18-02-2016','18-04-2016',5),
(1500,1,'19-06-2016','19-08-2016',20),
(2500,0,'15-11-2015','15-01-2016',9),
(1000,1,'01-02-2016','01-04-2016',13),
(1000,1,'25-04-2016','24-06-2016',5);

select * from Referrals


-----------------------




DROP TABLE Employment_details;


create table Employment_details
(
[id] int NOT NULL identity (1,1) PRIMARY KEY
,[profile_id] int NOT NULL
,[latest_employer] varchar(255) NULL
,[official_mail_id] varchar(255) NULL
,[yrs_experience] int NULL
,[occupational_category] varchar(255) NULL 
,constraint fk_Profiles1 foreign key(profile_id)
references Profiles (profile_id));

select * from Employment_details;



insert into Employment_details (profile_id ,latest_employer ,official_mail_id , yrs_experience ,occupational_category)
values 
(1,'Sabre','mehdi.hasan@sabre.com',1,'Working'),
(2,'hindustan unilever','rags.ramgas@gmail.com',2,'Working'),
(3,'Technicolor','jigna.thacker@technicolor.com',1,'Working'),
(4, NULL, NULL, NULL,'Student'),
(5,'GE Healthcare','ruchita.save@ge.com',3,'Working'),
(6,'Aditya birla','shubhi.bajpai@adityabirla.com',3,'Working'),
(7, NULL, NULL, NULL,'Student'),
(8,NULL,NULL,NULL,'Student'),
(9,NULL,NULL,NULL,'Student'),
(10,'huawei Technologies','gunjan19wadhwa@gmail.com',4,'Working'),
(11,NULL,NULL,NULL,'Student'),
(12,'Centurylink India','PreetInder.Sodhi@centurylink.com',2,'Working'),
(13,'SAP Labs India','udit.singh@sap.com',2,'Working'),
(14,'NestAway','deepak@nestaway.com',1,'Working'),
(15,NULL,NULL,NULL,'Student'),
(16,NULL,NULL,NULL,'Student'),
(17,'Microsoft','t-akmeh@microsoft.com',2,'Working'),
(18,'Cognizant','bhavranjan.pandey@cognizant.com',2,'Working'),
(19,NULL,NULL,NULL,'Student'),
(20,'Tiny Mogul Games','sanchit@hike.in',3,'Working');


select * from Employment_details;

-------------------------
query 

1.Write a query to get Profile ID, Full Name and Contact Number of the tenant who has stayed
with us for the longest time period in the past.
 

select top 2 with ties Profiles.profile_id ,Profiles.first_name + ' '+ Profiles.last_name as Fullname, Profiles.phone,email,
DATEDIFF(day,move_in_date,move_out_date) as totaldays
from  Profiles 
INNER JOIN Tenancy_histories on Profiles.profile_id = Tenancy_histories.profile_id
order by totaldays desc;



2 .  Write a query to get the Full name, email id, phone of tenants who are married and paying
rent > 9000 using subqueries  .

select first_name+ ' '+ last_name as FULL_NAME,phone,email
FROM Profiles
WHERE profile_id IN
(
    SELECT profile_id
    FROM Profiles
    WHERE marital_status= 'Y' ) AND  profile_id IN
                (   SELECT profile_id
                    FROM [dbo].[Tenancy_histories]
                    WHERE rent> '9000') ;





select p.first_name+ ' '+ p.last_name as FULL_NAME,p.phone,p.email,t.rent
from profiles p inner join Tenancy_histories t on p.profile_id = t.profile_id where p.marital_status='y' and t.rent >9000 ;


--------------------------------------------


3 .Write a query to display profile id, full name, phone, email id, city , house id, move_in_date ,
move_out date, rent, total number of referrals made, latest employer and the occupational
category of all the tenants living in Bangalore or Pune in the time period of jan 2015 to jan
2016 sorted by their rent in descending order.

select Profiles.profile_id ,Profiles.first_name + ' '+ Profiles.last_name as Fullname, Profiles.phone,Profiles.email,Profiles.city,
Tenancy_histories.house_id,Tenancy_histories.move_in_date,Tenancy_histories.move_out_date,Tenancy_histories.rent,Employment_details.latest_employer,
Employment_details.occupational_category  ,sum(Referrals.referral_valid) as total_referral_made
from  Profiles 
INNER JOIN Tenancy_histories on Profiles.profile_id = Tenancy_histories.profile_id
INNER JOIN Employment_details ON Profiles.profile_id =Employment_details.profile_id   
INNER JOIN Referrals on Profiles.profile_id = Referrals.profile_id
where (city in ('Pune', 'Bangalore')) and (move_in_date >= '01-01-2015' and move_out_date <= '01-01-2016' )
group  by Tenancy_histories.rent,Profiles.profile_id,email,city,house_id,first_name,last_name,phone,move_in_date,move_out_date,latest_employer,
occupational_category






4 .Write a sql snippet to find the full_name, email_id, phone number and referral code of all
the tenants who have referred more than once.
Also find the total bonus amount they should receive given that the bonus gets calculated
only for valid referrals.

select Profiles.profile_id, first_name + ' ' + last_name as FullName,email, phone, referral_code,referral_valid,
sum(referrer_bonus_amount) as total_referrer_bonus,

SUM(case when referral_valid = 1 then referrer_bonus_amount
                    else 0
               end) AS [Total Valid Bonus Amount],
			   COUNT(ref_id) AS [Total referrals] from Profiles 
			   inner join Referrals on Profiles.profile_id = Referrals.profile_id
group by Profiles.profile_id, first_name, last_name,email, phone, referral_code,referral_valid
having(SUM(referral_valid) >1)


5 Write a query to find the rent generated from each city and also the total of all cities. 

select Profiles.city,sum(Tenancy_histories.rent) as each_city_sum
from Profiles
INNER JOIN Tenancy_histories on Profiles.profile_id = Tenancy_histories.profile_id
group by city
union
select 'total' ,sum(rent) from Tenancy_histories



6. Create a view 'vw_tenant' find
profile_id,rent,move_in_date,house_type,beds_vacant,description and city of tenants who
shifted on/after 30th april 2015 and are living in houses having vacant beds and its address.

create view vw_tenat as
select profile_id,rent,move_in_date,house_type,beds_vacant,name,description ,city,pincode
from Houses
INNER JOIN Tenancy_histories on Houses.house_id = Tenancy_histories.house_id
INNER JOIN Address on Houses.house_id = Address.house_id
where (move_in_date >= '04-30-2015') and (beds_vacant >=1)



select * from vw_tenat
 
 drop view vw_tenat


7 Write a code to extend the valid_till date for a month of tenants who have referred more
than TWO times.

update Referrals
set
valid_till= dateadd(DAY,30,valid_till)

where
profile_id in (

select profile_id
from
Referrals
group by profile_id
having(SUM(referral_valid) >2))

select * from Referrals


9. Write a query to get Profile ID, Full Name , Contact Number of the tenants along with a new
column 'Customer Segment' wherein if the tenant pays rent greater than 10000, tenant falls
in Grade A segment, if rent is between 7500 to 10000, tenant falls in Grade B else in Grade C.


select Profiles.profile_id , first_name + ' ' + last_name as FullName, phone,rent,
IIF(rent>10000,'Grade A',iif(rent>7500,'Grade B','Grade C')) as customer_segment
from Profiles
INNER JOIN Tenancy_histories on Profiles.profile_id = Tenancy_histories.profile_id
order by rent desc;



8   Write a query to get Fullname, Contact, City and House Details of the tenants who have not
referred even once


select first_name + ' ' + last_name as FullName, phone,email, city, house_type,bhk_type,furnishing_type
from Profiles
inner join Houses on Profiles.profile_id = Houses.house_id
where Profiles.profile_id not in (select ref_id from Referrals)


10 Write a query to get the house details of the house having highest occupancy .


select top 1 with ties house_id,house_type, bhk_type , bed_count, furnishing_type, beds_vacant ,(bed_count-beds_vacant) as house_occupancy
from Houses
order by house_occupancy desc;


-----------------------------

11.

select rent from Tenancy_histories order by rent desc ;



2 lowest salary 


select p.profile_id , p.first_name + ' ' + p.last_name as FullName, p.phone, min(t.rent )
from Profiles p
INNER JOIN Tenancy_histories t on P.profile_id = T.profile_id
having  t. rent >(min(t.rent)) group by 
order by rent desc;




select p.profile_id , min(t.rent )
from Profiles p
INNER JOIN Tenancy_histories t on P.profile_id = T.profile_id
 group by p.profile_id , t.rent having  t. rent >(min(t.rent))
order by rent desc;


11.


UPDATE Employment_details
SET yrs_experience= yrs_experience - 1
WHERE occupational_category  = 'WORKING' ;


SELECT * FROM Employment_details


12.

select *, rank() over (partition by city order by gender  ) rank from profiles


13.
select * from 
(select *, rank() over (partition by city order by gender  ) rank from profiles ) a where a.rank = 1


14.
select p.first_name,p.city,T.RENT, rank() over (partition by city order by t.rent  DESC) rank from profiles p inner join Tenancy_histories t
   on p.profile_id= t.profile_id 


15.
SELECT * from (
select p.first_name,p.city,T.RENT, rank() over (partition by city order by t.rent  DESC) rank from profiles p inner join Tenancy_histories t
on p.profile_id= t.profile_id ) a where a.rank=1

SELECT * FROM TENANCY_HISTORIES;

16.
SELECT * ,FIRST_VALUE(RENT) OVER (PARTITION BY BED_TYPE ORDER BY rent ) FIRST_RENT,LAST_value(rent) over (PARTITION BY BED_TYPE ORDER BY rent ) last_rent
FROM tenancy_histories;


17.
SELECT * ,FIRST_VALUE(RENT) OVER (PARTITION BY BED_TYPE ORDER BY rent ) FIRST_RENT,
LAST_value(rent) over (PARTITION BY BED_TYPE ORDER BY rent rows between unbounded preceding and unbounded following) last_rent 
FROM tenancy_histories;

18.

select p.first_name,t.bed_type,p.city,T.RENT, rank() over (partition by city order by t.rent  DESC) rank,
FIRST_VALUE(RENT) OVER (PARTITION BY bed_type ORDER BY rent desc ) FIRST_RENT from profiles p inner join Tenancy_histories t
on p.profile_id= t.profile_id 

19.

select p.first_name,p.city,T.RENT, avg(rent) over (order by city  rows between 2 preceding and current row) as three_day_moving_average,
avg(rent) over (order by city  rows between 6 preceding and current row) as seven_day_moving_average
from profiles p inner join Tenancy_histories t on p.profile_id= t.profile_id 

20.

----how to get sum of two column if have null value in it........

select sum(isnull(yrs_experience,0)) total from employment_details;


21.


select *,CASE WHEN yrs_experience is null then 0 else yrs_experience end  as  yrs_experience_new from employment_details;

22.

create table details
(timing1 time, timing2 time);

insert into details(timing1,timing2)
values ('10:50:00', '12:30:00'),
('12:30:00','12:35:00'),
('05:45:00','05:44:00');

select * , datediff(second,timing1,timing2) time_diff_sec, datediff(second,timing1,timing2)/3600 hr,
 datediff(second,timing1,timing2)%3600 remaining_sec_formin, (datediff(second,timing1,timing2)%3600)/60 minutes from details;

		
23.

 select string_agg( first_name ,',') summary from profiles;

 select concat(first_name,'-',city) detail from profiles 

select string_agg(detail,';') summary from 
  (select concat(first_name,'-',city) detail from profiles ) a ; 

select gender,string_agg(detail,';') summary from 
  (select gender,concat(first_name,'-',city) detail from profiles ) a group by gender; 


24.

recursive:

select datename(dw,1);

with cte_numbers(n,weekday)
as ( select 0,datename(dw,0)
union all select n + 1, datename(dw, n + 1)
from cte_numbers where n < 6)
 
select weekday from cte_numbers;


25.

create table orders(order_id char(15),product_id char(15),quantity int);
insert into orders values('odr1','prd1',5),('odr2','prd2',1),('odr3','prd3',3);
 
 with cte as (
 select order_id,product_id,quantity from orders union all
 select order_id,product_id,quantity-1 from cte where quantity >= 2) 
 
select order_id,product_id,quantity from cte;

 26.
 with cte as (
 select order_id,product_id,quantity from orders union all
 select order_id,product_id,quantity-1 from cte where quantity >= 2) 
 
  select order_id,product_id,count(quantity) cnt from (
 select * from cte) a group by order_id,product_id;



 