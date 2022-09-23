select ename,loc 
from emp e
join dept d
on e.deptno=d.deptno;

select d.dname,e.sal
from emp e
join dept d
on e.deptno=d.deptno
where dname='accounting';

select dname,sal*12 annual_sal
from emp e
join dept d
on e.deptno=d.deptno
where sal>2340;

select ename,dname
from emp e
join dept d
on e.deptno=d.deptno
where ename like '%A%';

select ename , dname
from emp e
join dept d
on e.deptno=d.deptno
where job='salesman';

select dname,job
from emp e
join dept d
on e.deptno=d.deptno
where left(job,1) ='s' and left(dname,1) ='s';

select dname,mgr
from emp e
join dept d
on e.deptno=d.deptno
where mgr=7839;

select  dname,hiredate
from emp e
join dept d
on e.deptno=d.deptno
where hiredate>1983-12-31 and dname in ('research','accounting');

select ename,dname
from emp e
join dept d
on e.deptno=d.deptno
where coalesce(comm,0)>0 and e.deptno in (10,30);

select dname,empno
from emp e
join dept d
on e.deptno=d.deptno
where empno in (7839,7902) and loc='NEW YORK';

select loc,avg(sal)
from emp e
join dept d 
on e.deptno=d.deptno
where substr(ename,2,1) != 'A'
group by loc;

select  ename,loc
from emp e
join dept d
on e.deptno=d.deptno
where job='manager' and mgr=7839;

select dname,empno
from emp e
join dept d
on e.deptno=d.deptno
where job='clerk' and mgr is not null;

select dname,sal+coalesce(mgr,0) total_sal
from emp e
join dept d
on d.deptno=e.deptno
group by e.deptno
having count(empno)>4;

select dname,count(empno)
from emp e
join dept d
on e.deptno=d.deptno
where job in ('clerk','manager')
group by e.deptno;