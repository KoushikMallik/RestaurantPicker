SET SERVEROUTPUT ON;
SET VERIFY OFF;

create or replace procedure add_res(rName in out Restaurant.res_name%TYPE, rCity in out Restaurant.res_city%TYPE, rLoc in out Restaurant.res_loc%TYPE, rRat in out Restaurant.res_rating%TYPE)
	is
	
	I Restaurant.res_id%TYPE := 0;
    error exception;
	
BEGIN

    I := getLastId();
    I := I+1;  
    insert into Restaurant values(I,rName,rCity,rLoc,rRat);
    commit;
	
EXCEPTION
	when others then
		DBMS_OUTPUT.PUT_LINE(chr(13)); 
        DBMS_OUTPUT.PUT_LINE('Error in Adding! Input field is empty.'); 
    
END add_res;
/


create or replace procedure remove_res(rId in out Restaurant.res_id%TYPE)
    is
    
BEGIN
	
	delete from RESTAURANT_CATEGORY where res_id = rId;
    delete from RESTAURANT where res_id = rId;

EXCEPTION
	when others then
        DBMS_OUTPUT.PUT_LINE('Error in Removing!'); 

END remove_res;
/