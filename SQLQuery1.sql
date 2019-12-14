--create database Student_Andriy
--go
use Student_Andriy
create table Student (
Id int primary key identity (1,1) not null,
Name nvarchar(20) unique not null
);
create table Exams (
Id int primary key identity (1,1) not null,
Name nvarchar(20) unique not null
);
create table Achiements (
Id int primary key identity (1,1) not null,
StudentId int foreign key references Student(Id),
ExamId int foreign key references Exams(Id),
Mark int
);
insert Student values
('Andriy'),
('Wanja'),
('Yura'),
('Oleg')
insert Exams values
('C++'),
('C#'),
('DP')
insert Achiements values
(1,1,null),
(1,2, 10),
(1,3, 7);
select s.[Name] as Stud, e.[Name], a.[Mark]
from Student as s, Exams as e, Achiements as a
where s.Id =a.StudentId and e.Id = a.ExamId

select s.[Name],a.Mark
from Student  as s left  join Achiements  as  a on  s.Id = a.StudentId
where a.Mark  is  not  null

select * from Exams

select s.[Name], e.[Name], Mark
from Student as s, Exams as e, Achiements as a

where a.StudentId = s.Id and a.Mark is not null and e.Id=a.Id

select s.[Name], a.Mark
from Student as s, Achiements as a
where s.Id = a.StudentId
and a.Mark >(select AVG(a.Mark) from Achiements as a)

use master
go
drop database Hospital_Andriy
