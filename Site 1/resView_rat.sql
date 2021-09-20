--clear screen;

SET SERVEROUTPUT ON;
SET VERIFY OFF;

BEGIN
	DBMS_OUTPUT.PUT_LINE(chr(13)); 
	DBMS_OUTPUT.PUT_LINE('Choose your option: ');
	DBMS_OUTPUT.PUT_LINE(chr(13)); 
	DBMS_OUTPUT.PUT_LINE('Enter (1) for Restaurants of Dhaka City rating 4* or more');
	DBMS_OUTPUT.PUT_LINE('Enter (2) for Restaurants of Dhaka City rating under 4*');
	DBMS_OUTPUT.PUT_LINE('Enter (3) for Restaurants of Chittagong City rating 4* or more');
	DBMS_OUTPUT.PUT_LINE('Enter (4) for Restaurants of Chittagong City rating under 4*');
	DBMS_OUTPUT.PUT_LINE(chr(13)); 
END;
/


ACCEPT x NUMBER PROMPT "Select your option: "

DECLARE
    opt NUMBER:=&x;
	WRONG_VALUE EXCEPTION;
		
BEGIN
	
	IF opt = 1 THEN
		DBMS_OUTPUT.PUT_LINE(chr(13)); 
		DBMS_OUTPUT.PUT_LINE('DHAKA CITY 4* or more');
		DBMS_OUTPUT.PUT_LINE('------------------------------- ');
		pick_rat4('Dhaka', 4);
	
	ELSIF opt = 2 THEN
		DBMS_OUTPUT.PUT_LINE(chr(13)); 
		DBMS_OUTPUT.PUT_LINE('DHAKA CITY UNDER 4*');
		DBMS_OUTPUT.PUT_LINE('------------------------------- ');
		pick_rat3('Dhaka', 4);
		
	ELSIF opt = 3 THEN
		DBMS_OUTPUT.PUT_LINE(chr(13)); 
		DBMS_OUTPUT.PUT_LINE('CHITTAGONG CITY 4* or more');
		DBMS_OUTPUT.PUT_LINE('------------------------------- ');
		pick_rat4('Chittagong', 4);
		
	ELSIF opt = 4 THEN
		DBMS_OUTPUT.PUT_LINE(chr(13)); 
		DBMS_OUTPUT.PUT_LINE('CHITTAGONG CITY UNDER 4*');
		DBMS_OUTPUT.PUT_LINE('------------------------------- ');
		pick_rat3('Chittagong', 4);
		
	ELSE
		RAISE WRONG_VALUE;

	END IF;
	
	
EXCEPTION

	WHEN WRONG_VALUE THEN
		DBMS_OUTPUT.PUT_LINE(chr(13)); 
		DBMS_OUTPUT.PUT_LINE('Wrong digit pressed! Please press digit according to options.');

END;
/

