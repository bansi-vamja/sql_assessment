use xyz;
create table worker
(
worker_id int,
s_first_name varchar(20),
s_last_name varchar(20),
salary int,
joining_date timestamp ,
department varchar(20)
);

insert into worker(worker_id,s_first_name,s_last_name,salary,joining_date,department)values
(1,'monika','arora',100000,'2014/2/20 9:00','hr'),
(2,'niharika','verna',80000,'2014/6/11 9:00','admin'),
(3,'vishal','singhal',300000,'2014/2/20 9:00','hr'),
(4,'amitabh','singh',500000,'2014/2/20 9:00','admin'),
(5,'vivek','bhati',500000,'2014/6/11 9:00','admin'),
(6,'vipul','diwan',200000,'2014/6/11 9:00','account'),
(7,'satish','kumar',75000,'2014/1/20 9:00','account'),
(8,'geetika','chauhan',90000,'2014/4/11 9:00','admin');

select * from worker;

-- queury 1--  
select worker_id,s_first_name,s_last_name,salary,joining_date,department from worker order by (s_first_name)asc ;
select worker_id,s_first_name,s_last_name,salary,joining_date,department from worker order by (department)desc ;

-- queury 2--  
select  worker_id,s_first_name,s_last_name,salary,joining_date,department from worker where s_first_name in ('vipul', 'satish');

-- queury 3-- 

select * from worker where s_first_name like '_____h%';

-- queury 4--
    
    select salary from worker where salary between 200000 and 500000;
    
 -- queury 5-- 
 
 select worker_id,s_first_name,s_last_name,salary,joining_date,department,count(*) as duplicate from worker group by  worker_id,s_first_name,s_last_name,salary,joining_date,department having count(*)>1;
 select * from worker;
 
 -- queury 6-- 
 
 select  worker_id,s_first_name,s_last_name,salary,joining_date,department  from worker limit 6;
 
 /* queury 7*/
 
 select department from worker group by department having department <5;
 
 /*queury 8 */
 
 select department,count(department) from worker group by department;
 
 -- queury 9-- 
 
 select s_first_name , department from worker where salary in (select max(salary) from worker group by department);
 