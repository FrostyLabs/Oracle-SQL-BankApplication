ALTER TYPE employee_info_Type
ADD MEMBER FUNCTION awardStar RETURN VARCHAR2,
ADD MEMBER FUNCTION years_at_company RETURN VARCHAR2, 
ADD MEMBER FUNCTION  count_supervised RETURN VARCHAR2 CASCADE; 


CREATE OR REPLACE TYPE BODY employee_info_Type AS 
member function awardStar return varchar2 is 
    medal varchar2(20);  
    years number;
    emps number;
    begin
        select count(*)
        into   emps
        from   employee_table e
        where  Deref(e.supervisor_ID).emp_ID = self.emp_ID;
        
        years := trunc(months_between(sysDate,self.join_Date))/12;
        
        if years > 12 AND emps > 6 then
            medal := 'Gold Medal';
            elsif years > 8 AND emps > 3 then
            medal := 'Silver Medal';
            elsif years > 4 then
            medal := 'Bronze Medal';
            else
            medal := 'No Medal Awarded';
        end if;        
        return medal;
    end awardStar;
    
    member function years_at_company RETURN varchar2 IS 
    years number; 
    begin
        years := trunc(months_between(sysDate,self.join_Date))/12;
        return years; 
    end years_at_company;  
    
    member function count_supervised RETURN varchar2 IS 
    emps number; 
    begin 
        select count(*)
        into   emps
        from   employee_table e
        where  Deref(e.supervisor_ID).emp_ID = self.emp_ID;
        
        return emps; 
    end count_supervised;
end;
/

ALTER TYPE person_type
ADD MEMBER FUNCTION print_name RETURN STRING,
ADD MEMBER FUNCTION print_address RETURN STRING CASCADE; 
/

CREATE OR REPLACE TYPE BODY person_type AS 
MEMBER FUNCTION print_name RETURN STRING IS 
    BEGIN
        RETURN name.title || '. ' || name.firstname || ' ' || name.surname;
    END print_name; 

MEMBER FUNCTION print_address RETURN STRING IS 
    BEGIN
        RETURN address.street || ', ' || address.city || ', ' || address.postcode;
    END print_address; 
END; 
/ 

ALTER TYPE branch_type
ADD MEMBER FUNCTION print_address RETURN STRING CASCADE; 
/

CREATE OR REPLACE TYPE BODY branch_type AS
MEMBER FUNCTION print_address RETURN STRING IS 
    BEGIN
        RETURN self.street || ' ' || self.city || ', ' || self.postcode;
    END print_address; 
END; 
/ 

show error;

