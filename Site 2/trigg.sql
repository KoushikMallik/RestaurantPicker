create or replace trigger addRes_trigger
after insert on RESTAURANT
for each row	
	
begin
	
	DBMS_OUTPUT.PUT_LINE(chr(13)); 
	DBMS_OUTPUT.PUT_LINE('New Restaurant Added!');
	
end;
/


create or replace trigger dltRes_trigger
after delete on RESTAURANT
for each row

begin

	DBMS_OUTPUT.PUT_LINE(chr(13)); 
	DBMS_OUTPUT.PUT_LINE('Restaurant Deleted!');
	
end;
/