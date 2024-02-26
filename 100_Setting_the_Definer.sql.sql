

use online_shop;
show tables;

select * from products;

create user shopuser@localhost identified by 'hello';

drop procedure ShowCustomers;

DELIMITER $$

CREATE definer=shopuser@localhost PROCEDURE `ShowCustomers`()
sql security definer
begin
select * from customers;
end$$

DELIMITER ;

call ShowCustomers();
