select ename,job,sal*12 Annual_sal,e.deptno,dname
from emp e
join dept d
on e.deptno=d.deptno
where sal*12 > 30000 and job != 'clerk';

select e1.empno,e1.ename,e2.empno,e2.ename
from emp e1
join emp e2
on e1.mgr=e2.empno;

select ename,dname
from dept d
left join emp e
on d.deptno=e.deptno;

select dname,sum(sal+coalesce(comm,0)) total_sal
from emp e
join dept d
on e.deptno=d.deptno
group by dname;

select ename,dname
from emp e
join dept d
on e.deptno=d.deptno;

select ename,loc
from emp e
join dept d
on e.deptno=d.deptno
where coalesce(comm,0)>0;

select dname
from emp e
join dept d
on e.deptno=d.deptno
where mgr is null and sal in (select min(sal)
								from emp
							);
                            
select dname,loc
from emp e
join dept d
on e.deptno=d.deptno
where mgr=(	select empno
			from emp
            where ename = 'smith'
			);
            
select d3.dname,d3.loc
from emp e1
join dept d1
join emp e2
join dept d2
join emp e3
join dept d3
on e1.deptno=d1.deptno and e2.deptno=d2.deptno and e3.deptno=d3.deptno and e1.mgr=e2.empno and e2.mgr=e3.empno
where e1.job='salesman';

select ename
from emp e
join dept d
on e.deptno=d.deptno
where dname='research' and job='manager';

select count(*)
from emp
where sal<(select sal
from emp
where empno=(select mgr
from emp
where ename='blake' ));

select d1.dname,d1.loc
from emp e1
join dept d1
join emp e2
join dept d2
on e1.deptno=d1.deptno and e2.deptno=d2.deptno and e1.mgr=e2.empno
where e2.ename='blake' and e1.job='analyst';

select e2.ename,e2.hiredate,e2.comm
from emp e1
join dept d1
join emp e2
join dept d2
on e1.deptno=d1.deptno and e2.deptno=d2.deptno and e1.mgr=e2.empno
where e1.ename='ford';

select ename,dname,e.deptno
from emp e
join dept d
on e.deptno=d.deptno
where sal<(select avg(sal)
from emp
where deptno=30);

select e1.ename,d1.dname,d1.loc
from emp e1
join dept d1
join emp e2
join dept d2
on e1.deptno=d1.deptno and e2.deptno=d2.deptno and e1.mgr=e2.empno
where e2.ename='jones';

select ename,dname
from emp e
join dept d
on e.deptno=d.deptno
where left(ename,1) in ('s');

select dname 
from emp e
right join dept d
on e.deptno=d.deptno
where d.deptno not in (select deptno from emp);

select e1.ename
from emp e1
join emp e2
on e1.comm=e2.comm
where e1.empno != e2.empno;

select ename,dname
from emp e
right join dept d
on e.deptno=d.deptno;

select 	ename,job,dname,loc
from emp e
join dept d
on e.deptno=d.deptno
where job='manager' and loc='chicago';

select min(e1.sal)
from emp e1,emp e2,emp e3
where e1.sal>e2.sal;

select ename
from emp
where sal*12 >1500 and hiredate>'1982-01-01';

select distinct d1.dname,d1.loc,d1.deptno
from emp e1
join dept d1
join emp e2
on e1.deptno=d1.deptno and e1.mgr=e2.mgr
where e1.empno!=e2.empno;

select e1.ename,e2.ename
from emp e1
join emp e2
on e1.mgr=e2.empno;

select 	ename,dname
from emp e
join dept d
on e.deptno=d.deptno
where left(ename,1) in ('S');

select e1.ename
from emp e1
join emp e2
on e1.sal=e2.sal
where e1.empno<>e2.empno;

