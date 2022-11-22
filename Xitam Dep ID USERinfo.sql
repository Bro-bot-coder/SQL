select * from dbo.DEPARTMENTS;
select * from dbo.USERINFO;

select u.Badgenumber,
       u.Gender,
       u.DEFAULTDEPTID as DepID,
	   d.DEPTNAME,
       u.Name,
	   u.lastname,
	   u.HIREDDAY
from dbo.USERINFO u left join dbo.DEPARTMENTS d

on (u.DEFAULTDEPTID = d.DEPTID)

where u.DEFAULTDEPTID = 18;



select u.lastname,
       u.Name,
	   u.DEFAULTDEPTID
from dbo.USERINFO u 
where  u.Badgenumber =488;

