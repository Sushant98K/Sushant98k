select sum(sal),job
from emp
group by job;

select count(empno) employs,hiredate
from emp
group by hiredate
having employs>3;

select count(empno), deptno,sum(sal) sumsal
from emp
group by deptno
having count(empno)>2 and sum(sal)>9000;

select count(*),avg(sal)
from emp
where sal>coalesce(comm,0)
group by deptno;

select count(sal) same_sal,sal 
from emp
group by sal
having same_sal>1;

select ename
from emp
group by ename
having count(ename)>1;

select deptno
from emp
group by deptno
having avg(sal) between 2500 and 3000;

select count(empno) employees,deptno
from emp
where job in ('manager','analyst') and right(sal*12,1)=0
group by deptno;

select count(empno) clerks,deptno
from emp
where job='clerk'
group by deptno;

select max(sal),deptno
from emp
where job='manager'
group by deptno;

select sal,count(sal) repeted_salary
from emp
group by sal;

select count(*),deptno
from emp
where deptno not in (10)
group by deptno;

select count(*),deptno
from emp
where comm is not null
group by deptno;

select count(*)
from emp
where job != 'manager'
group by deptno;

select avg(sal),job
from emp
where mgr is not null
group by job;

select count(empno),deptno,hiredate
from emp
group by hiredate,deptno
having count(hiredate)>1;

select count(empno),deptno,sal
from emp
group by sal,deptno
having count(sal)>1;

select max(sal),job
from emp
where left(ename,1) not in ('k')
group by job;

select count(empno),deptno
from emp
where mgr=7839
group by deptno

select count(ename),deptno
from emp
where left(ename,1) in ('A','E','I','O','U')
group by deptno;