--clear screen;
SET SERVEROUTPUT ON;
SET VERIFY OFF;


BEGIN
	DBMS_OUTPUT.PUT_LINE(chr(10));
	DBMS_OUTPUT.PUT_LINE('Welcome to "RESTAURANT PICKER" ');
	DBMS_OUTPUT.PUT_LINE(chr(13)); 
	DBMS_OUTPUT.PUT_LINE('Choose you option: ');
	DBMS_OUTPUT.PUT_LINE(chr(13)); 
	DBMS_OUTPUT.PUT_LINE('Enter (1) to Pick a Restaurant');
	DBMS_OUTPUT.PUT_LINE('Enter (2) to Search a Restaurant');
	DBMS_OUTPUT.PUT_LINE('Enter (3) to Add a Restaurant');
	DBMS_OUTPUT.PUT_LINE('Enter (4) to Remove a Restaurant');
END;
/


ACCEPT x NUMBER PROMPT "Type your option: "

DECLARE
    opt NUMBER:=&x;
	WRONG_VALUE EXCEPTION;
		
BEGIN
	
	IF opt = 1 THEN
		DBMS_OUTPUT.PUT_LINE(chr(13)); 
		DBMS_OUTPUT.PUT_LINE('PICK A RESTAURANT');
			--@F:\DDS_Project\pick_options.sql
	
	ELSIF opt = 2 THEN
		DBMS_OUTPUT.PUT_LINE(chr(13)); 
		DBMS_OUTPUT.PUT_LINE('SEARCH A RESTAURANT');
			--@F:\DDS_Project\search_res.sql
	
	ELSIF opt = 3 THEN
		DBMS_OUTPUT.PUT_LINE(chr(13)); 
		DBMS_OUTPUT.PUT_LINE('ADD A RESTAURANT');
			--@F:\DDS_Project\add_res.sql
	
	ELSIF opt = 4 THEN
		DBMS_OUTPUT.PUT_LINE(chr(13)); 
		DBMS_OUTPUT.PUT_LINE('REMOVE A RESTAURANT');
			--@F:\DDS_Project\remove_res.sql
	ELSE
		RAISE WRONG_VALUE;

	END IF;
	
	
EXCEPTION
	WHEN WRONG_VALUE THEN
		DBMS_OUTPUT.PUT_LINE(chr(13)); 
		DBMS_OUTPUT.PUT_LINE('You have pressed wrong digit!');

END;
/

--@F:\DDS_Project\pick_options.sql