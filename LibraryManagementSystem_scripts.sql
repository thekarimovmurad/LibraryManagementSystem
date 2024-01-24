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

select *
from Member
select *
from Book
select *
from Transactions
select *
from TransactionsHistory
