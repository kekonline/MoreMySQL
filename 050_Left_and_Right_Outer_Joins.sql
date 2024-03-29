—- inner keyword is optional (has no effect)
select name, street from person p inner join address a on p.address_id = a.id;

—- outer keyword is optional (has no effect)
select name, street from person p left outer join address a on p.address_id = a.i;

—- outer keyword is optional (has no effect)
select name, street from person p right outer join address a on p.address_id = a.i;
