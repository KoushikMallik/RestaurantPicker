--clear screen;
set serveroutput on;
set verify off;

declare
    A Restaurant.res_id%TYPE := &res_id_to_del;

begin

    remove_res(A);
    
end;
/