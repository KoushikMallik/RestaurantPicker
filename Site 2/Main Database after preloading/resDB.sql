--clear screen;

DROP TABLE RESTAURANT_CATEGORY;
DROP TABLE RESTAURANT;



CREATE TABLE RESTAURANT(
	res_id int not null, 
	res_name varchar2(20) not null, 
	res_city varchar2(15) not null, 
	res_loc varchar2(20) not null, 
	res_rating float not null,
	PRIMARY KEY(res_id)); 



CREATE TABLE RESTAURANT_CATEGORY(
	res_id int, 
	res_category varchar2(20), 
	FOREIGN KEY(res_id) REFERENCES RESTAURANT(res_id));



insert into RESTAURANT (res_id, res_name, res_city, res_loc, res_rating) values (1, 'Al Kaderia', 'Dhaka', 'Rampura', 3.9); 
insert into RESTAURANT (res_id, res_name, res_city, res_loc, res_rating) values (2, 'Royal Hut', 'Chittagong', 'Kajir Dewri', 3.5); 
insert into RESTAURANT (res_id, res_name, res_city, res_loc, res_rating) values (3, 'North End', 'Dhaka', 'Gulshan-1', 4.5); 
insert into RESTAURANT (res_id, res_name, res_city, res_loc, res_rating) values (4, 'Dawat Restaurant', 'Chittagong', 'Jamal Khan', 4.3); 
insert into RESTAURANT (res_id, res_name, res_city, res_loc, res_rating) values (5, 'Chillox', 'Dhaka', 'Banani', 4.4); 
insert into RESTAURANT (res_id, res_name, res_city, res_loc, res_rating) values (6, 'Kacchi Vai', 'Dhaka', 'Mirpur', 4.5); 
insert into RESTAURANT (res_id, res_name, res_city, res_loc, res_rating) values (7, 'Domino'||''''||'s Pizza', 'Dhaka', 'Dhanmondi', 4.3); 
insert into RESTAURANT (res_id, res_name, res_city, res_loc, res_rating) values (8, 'Crush Cafe', 'Chittagong', 'Chawkbazar', 4.1); 
insert into RESTAURANT (res_id, res_name, res_city, res_loc, res_rating) values (9, 'Haji Kacchi', 'Chittagong', '2 No. Gate', 4.6); 
insert into RESTAURANT (res_id, res_name, res_city, res_loc, res_rating) values (10, 'Sultan'||''''||'s Dine', 'Dhaka', 'Dhanmondi', 5.0); 
insert into RESTAURANT (res_id, res_name, res_city, res_loc, res_rating) values (11, 'Pizza Hut', 'Chittagong', 'GEC Circle', 4.2);
 


insert into RESTAURANT_CATEGORY (res_id, res_category) values (1, 'Chinese'); 
insert into RESTAURANT_CATEGORY (res_id, res_category) values (1, 'Biriyani'); 
insert into RESTAURANT_CATEGORY (res_id, res_category) values (1, 'Snacks'); 
insert into RESTAURANT_CATEGORY (res_id, res_category) values (2, 'Kabab'); 
insert into RESTAURANT_CATEGORY (res_id, res_category) values (2, 'Snacks'); 
insert into RESTAURANT_CATEGORY (res_id, res_category) values (3, 'Coffee'); 
insert into RESTAURANT_CATEGORY (res_id, res_category) values (4, 'Indian'); 
insert into RESTAURANT_CATEGORY (res_id, res_category) values (5, 'Burger'); 
insert into RESTAURANT_CATEGORY (res_id, res_category) values (6, 'Kacchi'); 
insert into RESTAURANT_CATEGORY (res_id, res_category) values (7, 'Pizza'); 
insert into RESTAURANT_CATEGORY (res_id, res_category) values (8, 'Kabab'); 
insert into RESTAURANT_CATEGORY (res_id, res_category) values (8, 'Snacks'); 
insert into RESTAURANT_CATEGORY (res_id, res_category) values (9, 'Kacchi'); 
insert into RESTAURANT_CATEGORY (res_id, res_category) values (9, 'Biriyani'); 
insert into RESTAURANT_CATEGORY (res_id, res_category) values (9, 'Snacks'); 
insert into RESTAURANT_CATEGORY (res_id, res_category) values (10, 'Kacchi');
insert into RESTAURANT_CATEGORY (res_id, res_category) values (11, 'Pizza');  
 

commit;
 
--SELECT * from RESTAURANT;
--SELECT * from RESTAURANT_CATEGORY;



