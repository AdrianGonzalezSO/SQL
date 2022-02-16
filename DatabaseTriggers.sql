create trigger customers_update before update on customers for each row execute procedure log_customers_change();

update customers set first_name = 'Steve' where last_name = 'Hall';

create trigger customers_insert after insert on customers for each statement execute procedure log_customers_change();

insert into customers (first_name, last_name, email_address, home_phone, city, state_name, years_old) values ('Jeffrey','Cook','Jeffrey.Cook@example.com','202-555-0398','Jersey city','New Jersey',66);

create trigger customer_min_age before update on customers for each row when (new.years_old < 13) execute procedure override_with_min_age();

update customers set years_old = 12, first_name = 'Steven' where last_name = 'Hall';

DROP TRIGGER IF EXISTS customer_min_age ON customers;

select * from customers order by customer_id;
select * from customers_log;
SELECT * FROM information_schema.triggers;
