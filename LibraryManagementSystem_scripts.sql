create database LibraryManagementSystem
use LibraryManagementSystem
create table Member
(
    memberId   int primary key,
    memberName nvarchar(100) not null,
    memberType varchar(20),
    numBooks   int,
    totalFine  int
);

create table Book
(
    bookId        int primary key,
    bookName      nvarchar(100) not null,
    author        varchar(20),
    price         double precision,
    numberOfBooks int,

);

create table Transactions
(
    bookId     int,
    memberId   int,
    issueDate  date,
    dueDate    date,
    returnDate date,
    constraint BId_FKEY foreign key (bookId) references Book (bookId),
    constraint MId_FKEY foreign key (memberId) references Member (memberId)
);

create table TransactionsHistory
(
    bookId     int,
    memberId   int,
    issueDate  date,
    dueDate    date,
    returnDate date,
    constraint BId_FKEY1 foreign key (bookId) references Book (bookId),
    constraint MId_FKEY2 foreign key (memberId) references Member (memberId)

);

--#region Repeat
/*Select*/
select * from Member
select * from Book
select * from Transactions
select * from TransactionsHistory
select distinct numberOfBooks from Book

/*Where (and, or, not)*/
select * from Member
where totalFine !=0
select * from Member
where totalFine !=0 and numBooks<3
select * from Member
where totalFine !=0 or numBooks<3
select * from Member
where totalFine !=0 or numBooks<3
select bookName from Book
where Book.author is not null

/*Order by*/
select * from Book
order by price
select * from Book
order by bookName desc
select * from Book
order by bookName desc, bookId asc

/*Update, Delete, Create*/
update Book set price=12.99, bookName='Programming in C#'
where Book.bookId=3
delete from Book
where Book.bookId=3
insert into Book(bookId, bookName, author, price, numberOfBooks)
values (3, 'Programming in C#', 'David Williams', 49.99, 8)
select *from Book
where Book.bookId=3

/*Min, Max, Sum, Avg*/
select min(Book.price) from Book
select max(Book.price) from Book
select sum(Book.price) from Book
select avg(Book.price) from Book

/*Like, Wildcard*/
select  * from Member
where memberName like '%a%'
select  * from Member
where memberName like '[abs]%'
select  * from Member
where memberName like '[a-g]%'

/*In*/
select  * from Member
where memberType in('student')
select  * from Member
where memberType not in('student')
select  * from Member
where memberType in(select memberType from Member where memberId=1)
/*Between*/
select  * from Book
where price between 10 and 20
select  * from Book
where price between 10 and 20
select  * from Transactions
where issueDate not between '2024/01/5' and '2024/01/8'


/*As*/
select bookId as Id from Book
/**/
--#endregion