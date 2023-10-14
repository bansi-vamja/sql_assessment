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

-- queury  2 -- 

select std_name ,dob from student;

-- queury  3 --

select std_name,percentage from student where percentage >=80; 

-- queury  4 --
select std_name,stream_,percentage from student where percentage >80;

-- queury  5 --

select * from student where stream_ = 'science' and percentage > 75;