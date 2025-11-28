---1 st example 

create or replace function increase_salary(salary int,percent int)
returns int as $$
begin 
     return salary + (salary* percent/100);
end ;
$$ language plpgsql;

select increase_salary(50000,10);


-----2nd example 

CREATE OR REPLACE FUNCTION annual_salary(monthly_salary INT)
RETURNS INT AS $$
BEGIN
    RETURN monthly_salary * 12;
END;
$$ LANGUAGE plpgsql;

select annual_salary (20000)