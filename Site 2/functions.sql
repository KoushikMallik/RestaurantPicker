set serveroutput on;
set verify off;

create or replace function getLastId
  return Restaurant.res_id%TYPE
  is
  
  A Restaurant.res_id%TYPE;


begin

    select max(res_id) into A from Restaurant;
	
    return A;
	
exception
	when no_data_found then 
		--return null;
		dbms_output.put_line('No data found!'); 

end getLastId;
/


create or replace function search_res(r_name in Restaurant.res_name%TYPE)
    return Restaurant.res_id%TYPE
    is
    
    A Restaurant.res_id%TYPE;
    
begin

    select res_id into A from Restaurant where res_name = r_name;
    
    return A;
	
exception
	when no_data_found then 
		return null;
		dbms_output.put_line('No data found!'); 

end search_res;
/