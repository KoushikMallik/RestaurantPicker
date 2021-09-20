SET SERVEROUTPUT ON;
SET VERIFY OFF;

CREATE OR REPLACE PROCEDURE pick_loc(r_city in RESTAURANT.res_city%TYPE)
  IS  
  r_name RESTAURANT.res_name%TYPE;
  
BEGIN
	FOR i IN (Select res_name from RESTAURANT where res_city=r_city) LOOP  
		r_name:=i.res_name;
		DBMS_OUTPUT.PUT_LINE(r_name);
	
	END LOOP;
END pick_loc;
/





CREATE OR REPLACE PROCEDURE pick_cat(r_cat in RESTAURANT_CATEGORY.res_category%TYPE)
  IS  
  r_name RESTAURANT.res_name%TYPE;

BEGIN
	FOR i IN (Select res_name from RESTAURANT inner join RESTAURANT_CATEGORY on RESTAURANT.res_id = RESTAURANT_CATEGORY.res_id where res_category=r_cat) LOOP  
		r_name:=i.res_name;
		DBMS_OUTPUT.PUT_LINE(r_name);
	
	END LOOP;
END pick_cat;
/




CREATE OR REPLACE PROCEDURE pick_rat4(r_city in RESTAURANT.res_city%TYPE, r_rat in RESTAURANT.res_rating%TYPE)
  IS  
  r_name RESTAURANT.res_name%TYPE;

BEGIN
	FOR i IN (Select res_name from RESTAURANT where res_city = r_city AND res_rating >= r_rat) LOOP  
		r_name:=i.res_name;
		DBMS_OUTPUT.PUT_LINE(r_name);
	
	END LOOP;
END pick_rat4;
/



CREATE OR REPLACE PROCEDURE pick_rat3(r_city in RESTAURANT.res_city%TYPE, r_rat in RESTAURANT.res_rating%TYPE)
  IS  
  r_name RESTAURANT.res_name%TYPE;

BEGIN
	FOR i IN (Select res_name from RESTAURANT where res_city = r_city AND res_rating < r_rat) LOOP  
		r_name:=i.res_name;
		DBMS_OUTPUT.PUT_LINE(r_name);
	
	END LOOP;
END pick_rat3;
/

