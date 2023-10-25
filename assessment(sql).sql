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
    
    select salary from  worker where salary between 200000 and 500000;
 -- queury 5-- 
 
 select worker_id,s_first_name,s_last_name,salary,count(*) as duplicate from worker group by  worker_id having count(*)>1;
 select * from worker;
 
 -- queury 6-- 
 
 select  worker_id,s_first_name,s_last_name,salary,joining_date,department  from worker limit 6; 
 
  -- queury 7--
 
 select department from worker group by department having department <5;
 
 -- queury 8--
  
  select department ,count(department) from worker group by department;
 
 -- queury 9-- 
 
 select s_first_name , department from worker where salary in (select max(salary) from worker group by department);
 
 
 /*ASSESMENT 2--*/
 
 use xyz;
create table student 
(
std_id int,
std_name varchar(20),
sex varchar(20),
percentage float,
class int,
sec varchar(20),
stream_ varchar(20),
dob date
);
drop table student;
insert into student (std_id,std_name,sex,percentage,class,sec,stream_,dob)values
(1001,'surekha joshi','female',82.00,12,'a','science','1998/3/8'),
(1002,'maahi agarwal','female',56.00,11,'c','commerce','2008/11/23'),
(1003,'sanam verma','male',59.00,11,'c','commerce','2006/6/29'),
(1004,'ronit kumar','male',63.00,11,'c','commerce','1997/11/5'),
(1005,'dipesh pulkit','male',78.00,11,'b','science','2003/09/14'),
(1006,'jahnvi puri','female',60.00,11,'b','commerce','2008/11/7'),
(1007,'sanam kumar','male',23.00,12,'f','commerce','1998/3/8'),
(1008,'sahil saras','male',56.00,11,'c','commerce','2008/11/7'),
(1009,'akshra agarwal','female',72.00,12,'b','commerce','1996/10/1'),
(1010,'stuti mishra','female',39.00,11,'f','science','2008/11/23'),
(1011,'harsh agarwal','male',42.00,11,'c','science','1998/3/8'),
(1012,'nikunj agarwal','male',49.00,12,'c','commerce','1998/06/28'),
(1013,'akriti saxena','female',89.00,12,'a','science','2008/11/23'),
(1014,'tani rastogi','female',82.00,12,'a','science','2008/11/23');

select * from student;
delete from student where std_id=1003;

 update student set stream_='arts' where std_id=1006;

-- queury  2 -- 

select std_name ,dob from student;

-- queury  3 --

select std_name,percentage from student where percentage >=80; 

-- queury  4 --
select std_name,stream_,percentage from student where percentage >80;

-- queury  5 --

select * from student where stream_ = 'science' and percentage > 75;