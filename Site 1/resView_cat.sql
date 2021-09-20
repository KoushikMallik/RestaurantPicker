--clear screen;
SET SERVEROUTPUT ON;
SET VERIFY OFF;

BEGIN
	DBMS_OUTPUT.PUT_LINE(chr(13)); 
	DBMS_OUTPUT.PUT_LINE('Choose your Category: ');
	DBMS_OUTPUT.PUT_LINE(chr(13)); 
	DBMS_OUTPUT.PUT_LINE('Enter (1) for Biriyani');
	DBMS_OUTPUT.PUT_LINE('Enter (2) for Kacchi');
	DBMS_OUTPUT.PUT_LINE('Enter (3) for Kabab');
	DBMS_OUTPUT.PUT_LINE('Enter (4) for Indian');
	DBMS_OUTPUT.PUT_LINE('Enter (5) for Chinese');
	DBMS_OUTPUT.PUT_LINE('Enter (6) for Burger');
	DBMS_OUTPUT.PUT_LINE('Enter (7) for Pizza');
	DBMS_OUTPUT.PUT_LINE('Enter (8) for Snacks');
	DBMS_OUTPUT.PUT_LINE('Enter (9) for Coffee');
	DBMS_OUTPUT.PUT_LINE(chr(13)); 
END;
/


ACCEPT x NUMBER PROMPT "Select your option: "

DECLARE
    opt NUMBER:=&x;
	WRONG_VALUE EXCEPTION;
		
BEGIN
	
	CASE
		WHEN opt = 1 THEN
			DBMS_OUTPUT.PUT_LINE(chr(13)); 
			DBMS_OUTPUT.PUT_LINE('Biriyani');
			DBMS_OUTPUT.PUT_LINE('-------------');
			pick_cat('Biriyani');
	
		WHEN opt = 2 THEN
			DBMS_OUTPUT.PUT_LINE(chr(13)); 
			DBMS_OUTPUT.PUT_LINE('Kacchi');
			DBMS_OUTPUT.PUT_LINE('-------------');
			pick_cat('Kacchi');
			
		WHEN opt = 3 THEN
			DBMS_OUTPUT.PUT_LINE(chr(13)); 
			DBMS_OUTPUT.PUT_LINE('Kabab');
			DBMS_OUTPUT.PUT_LINE('-------------');
			pick_cat('Kabab');
			
		WHEN opt = 4 THEN
			DBMS_OUTPUT.PUT_LINE(chr(13)); 
			DBMS_OUTPUT.PUT_LINE('Indian');
			DBMS_OUTPUT.PUT_LINE('-------------');
			pick_cat('Indian');
			
		WHEN opt = 5 THEN
			DBMS_OUTPUT.PUT_LINE(chr(13)); 
			DBMS_OUTPUT.PUT_LINE('Chinese');
			DBMS_OUTPUT.PUT_LINE('-------------');
			pick_cat('Chinese');
			
		WHEN opt = 6 THEN
			DBMS_OUTPUT.PUT_LINE(chr(13)); 
			DBMS_OUTPUT.PUT_LINE('Burger');
			DBMS_OUTPUT.PUT_LINE('-------------');
			pick_cat('Burger');
			
		WHEN opt = 7 THEN
			DBMS_OUTPUT.PUT_LINE(chr(13)); 
			DBMS_OUTPUT.PUT_LINE('Pizza');
			DBMS_OUTPUT.PUT_LINE('-------------');
			pick_cat('Pizza');
			
		WHEN opt = 8 THEN
			DBMS_OUTPUT.PUT_LINE(chr(13)); 
			DBMS_OUTPUT.PUT_LINE('Snacks');
			DBMS_OUTPUT.PUT_LINE('-------------');
			pick_cat('Snacks');
			
		WHEN opt = 9 THEN
			DBMS_OUTPUT.PUT_LINE(chr(13)); 
			DBMS_OUTPUT.PUT_LINE('Coffee');
			DBMS_OUTPUT.PUT_LINE('-------------');
			pick_cat('Coffee');

		ELSE
			RAISE WRONG_VALUE;

	END CASE;
		
EXCEPTION

	WHEN WRONG_VALUE THEN
		DBMS_OUTPUT.PUT_LINE(chr(13)); 
		DBMS_OUTPUT.PUT_LINE('Wrong digit pressed! Please press digit according to options.');

END;
/

