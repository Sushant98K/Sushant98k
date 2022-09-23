select * 
from emp
where comm is null;

select * 
from emp 
where mgr is null;

select * 
from emp
where deptno=30;

select * 
from emp
where deptno=30 and job='salesman' and sal>1500;

select * 
from emp
where left(ename,1) in ('S','A');

select *
from emp
where deptno not in (20,10);

select *
from emp
where left(ename,1) not in ('S');

select * 
from emp 
where mgr in (
			select empno
            from emp 
            where deptno=10
            );
		
select * 
from emp
where comm is null and job='clerk';

select * 
from emp 
where mgr in (
			select empno
            from emp 
            where deptno not in (10,30)
            );
            
select * 
from emp
where job='salesman' and sal > 2450;

select *
from emp
where job = 'analyst' and deptno=20 and sal>2500;

select * 
from emp
where left(ename,1) in ('M','J');

select emp.*,sal*12 Annual_Sal
from emp
where deptno not in (30);