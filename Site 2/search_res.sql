--clear screen;
set serveroutput on;
set verify off;

declare 
	
   A Restaurant.res_name%TYPE := '&search_res_name';
   B Restaurant.res_id%TYPE;
   
   name Restaurant.res_name%TYPE;
   city Restaurant.res_city%TYPE;
   location Restaurant.res_loc%TYPE;
   rating Restaurant.res_rating%TYPE;
	
begin 

    dbms_output.put_line('Details about the restaurant:');
    dbms_output.put_line(chr(13)); 
    B := search_res(A);
    
    select res_name,res_city,res_loc,res_rating into name,city,location,rating from Restaurant where res_id = B;
    
    dbms_output.put_line('Restaurant Name: '||name);
    dbms_output.put_line('Restaurant Location: '||location);
    dbms_output.put_line('Restaurant City: '||city);
    dbms_output.put_line('Restaurant Rating: '||rating);   

exception
	when no_data_found then 
		dbms_output.put_line('No data found!'); 
end; 
/