use LibraryManagementSystem
INSERT INTO Member (memberId, memberName, memberType, numBooks, totalFine)
VALUES (1, 'John Doe', 'Student', 3, 0),
       (2, 'Jane Smith', 'Faculty', 5, 0),
       (3, 'Alice Johnson', 'Student', 2, 5),
       (4, 'Bob Williams', 'Student', 1, 2),
       (5, 'Eva Davis', 'Faculty', 4, 8),
       (6, 'Charlie Brown', 'Student', 6, 10),
       (7, 'Grace Lee', 'Student', 0, 0),
       (8, 'David Wilson', 'Faculty', 2, 3),
       (9, 'Olivia Taylor', 'Student', 3, 5),
       (10, 'Michael Smith', 'Faculty', 7, 12);

INSERT INTO Book (bookId, bookName, author, price, numberOfBooks)
VALUES (1, 'Introduction to SQL', 'John Smith', 29.99, 10),
       (2, 'Data Structures and Algorithms', 'Jane Johnson', 39.99, 5),
       (3, 'Programming in C#', 'David Williams', 49.99, 8),
       (4, 'History of Literature', 'Alice Davis', 19.99, 15),
       (5, 'Artificial Intelligence Basics', 'Bob White', 59.99, 3),
       (6, 'Chemistry for Beginners', 'Eva Brown', 24.99, 12),
       (7, 'Physics Concepts', 'Charlie Green', 34.99, 7),
       (8, 'Introduction to Poetry', 'Grace Taylor', 14.99, 20),
       (9, 'Web Development with JavaScript', 'Michael Davis', 44.99, 6),
       (10, 'Digital Marketing Strategies', 'Olivia Wilson', 29.99, 10);

INSERT INTO Transactions (bookId, memberId, issueDate, dueDate, returnDate)
VALUES (1, 3, '2024-01-01', '2024-01-15', '2024-01-10'),
       (2, 5, '2024-01-02', '2024-01-16', '2024-01-14'),
       (3, 2, '2024-01-03', '2024-01-17', NULL),
       (4, 7, '2024-01-04', '2024-01-18', NULL),
       (5, 1, '2024-01-05', '2024-01-19', NULL),
       (6, 8, '2024-01-06', '2024-01-20', NULL),
       (7, 4, '2024-01-07', '2024-01-21', NULL),
       (8, 10, '2024-01-08', '2024-01-22', NULL),
       (9, 6, '2024-01-09', '2024-01-23', NULL),
       (10, 9, '2024-01-10', '2024-01-24', NULL);

INSERT INTO TransactionsHistory (bookId, memberId, issueDate, dueDate, returnDate)
VALUES (1, 3, '2023-12-15', '2024-01-01', '2023-12-30'),
       (2, 5, '2023-12-16', '2024-01-02', '2023-12-31'),
       (3, 2, '2023-12-17', '2024-01-03', '2024-01-01'),
       (4, 7, '2023-12-18', '2024-01-04', '2024-01-02'),
       (5, 1, '2023-12-19', '2024-01-05', '2024-01-03'),
       (6, 8, '2023-12-20', '2024-01-06', '2024-01-04'),
       (7, 4, '2023-12-21', '2024-01-07', '2024-01-05'),
       (8, 10, '2023-12-22', '2024-01-08', '2024-01-06'),
       (9, 6, '2023-12-23', '2024-01-09', '2024-01-07'),
       (10, 9, '2023-12-24', '2024-01-10', '2024-01-08');
