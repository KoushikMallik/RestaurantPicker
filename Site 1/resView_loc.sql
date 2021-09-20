--clear screen;
SET SERVEROUTPUT ON;
SET VERIFY OFF;


BEGIN
	DBMS_OUTPUT.PUT_LINE(chr(13));
	DBMS_OUTPUT.PUT_LINE('Choose your option: ');
	DBMS_OUTPUT.PUT_LINE(chr(13));
	DBMS_OUTPUT.PUT_LINE('Enter (1) to Restaurants of "DHAKA CITY" ');
	DBMS_OUTPUT.PUT_LINE('Enter (2) to Restaurants of "CHITTAGONG CITY" ');
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
		DBMS_OUTPUT.PUT_LINE('DHAKA CITY');
		DBMS_OUTPUT.PUT_LINE('------------------');
		pick_loc('Dhaka');
	
	ELSIF opt = 2 THEN
		DBMS_OUTPUT.PUT_LINE(chr(13)); 
		DBMS_OUTPUT.PUT_LINE('CHITTAGONG CITY');
		DBMS_OUTPUT.PUT_LINE('------------------');
		pick_loc('Chittagong');
	ELSE
		RAISE WRONG_VALUE;

	END IF;
	
	
EXCEPTION

	WHEN WRONG_VALUE THEN
		DBMS_OUTPUT.PUT_LINE(chr(13)); 
		DBMS_OUTPUT.PUT_LINE('Wrong digit pressed! Please press digit according to options.');

END;
/

