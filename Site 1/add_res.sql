--clear screen;
SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
    A Restaurant.res_name%TYPE := '&restaurant_name';
    B Restaurant.res_city%TYPE := '&restaurant_city';
    C Restaurant.res_loc%TYPE := '&restaurant_location';
    D Restaurant.res_rating%TYPE := '&restaurant_rating';


BEGIN

    add_res(A,B,C,D);
    
END;
/