--clear screen;
SET SERVEROUTPUT ON;
SET VERIFY OFF;

BEGIN
	DBMS_OUTPUT.PUT_LINE(chr(13));
	DBMS_OUTPUT.PUT_LINE('Choose you option: ');
	DBMS_OUTPUT.PUT_LINE(chr(13));
	DBMS_OUTPUT.PUT_LINE('Enter (1) to Select by Location');
	DBMS_OUTPUT.PUT_LINE('Enter (2) to Select by Category');
	DBMS_OUTPUT.PUT_LINE('Enter (3) to Select by Rating');
END;
/


ACCEPT x NUMBER PROMPT "Select your option: "

DECLARE
    opt NUMBER:=&x;
	WRONG_VALUE EXCEPTION;
		
BEGIN
	
	IF opt = 1 THEN
		DBMS_OUTPUT.PUT_LINE(chr(13)); 
		DBMS_OUTPUT.PUT_LINE('PICKED BY LOCATION');
		--@F:\DDS_Project\resView_loc.sql
	
	ELSIF opt = 2 THEN
		DBMS_OUTPUT.PUT_LINE(chr(13)); 
		DBMS_OUTPUT.PUT_LINE('PICKED BY CATEGORY');
		--@F:\DDS_Project\resView_cat.sql
	
	ELSIF opt = 3 THEN
		DBMS_OUTPUT.PUT_LINE(chr(13)); 
		DBMS_OUTPUT.PUT_LINE('PICKED BY RATING');
		--@F:\DDS_Project\resView_rat.sql
		
	ELSE
		RAISE WRONG_VALUE;

	END IF;
	
	
EXCEPTION
	WHEN WRONG_VALUE THEN
		DBMS_OUTPUT.PUT_LINE(chr(13)); 
		DBMS_OUTPUT.PUT_LINE('You have pressed wrong digit! Please select from the options.');

END;
/


