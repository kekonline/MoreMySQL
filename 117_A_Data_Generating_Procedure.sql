-- id
-- email: user1@caveofprogramming.com, user2@caveofprogramming.com, ...
-- random date
-- enabled (random boolean)

create table users (id int auto_increment primary key, email varchar(40) not null, registered date not null, 
active boolean default false);

use test;

select round(rand());

select date(now()) - interval floor(10000*rand()) day;

drop table if exists users;

show tables;

delimiter $$

create procedure testdata()
begin

	declare NUMROWS int default 10000;
	declare count int default 0;
    
    declare registered_value date default null;
    declare email_value varchar(40) default null;
    declare active_value boolean default false;

	drop table if exists users;

	create table users (id int auto_increment primary key, email varchar(40) not null, registered date not null, 
	active boolean default false);

	while count < NUMROWS do
    
		set registered_value := date(now()) - interval floor(10000*rand()) day;
        set active_value := round(rand());
        set email_value := concat("user", count, "@caveofprogramming.com");
        
        insert into users (email, registered, active) values (email_value, registered_value, active_value);
    
		set count := count + 1;
    end while;


end$$


delimiter ;

drop procedure testdata;

call testdata();

show tables;

select count(*) from users;



