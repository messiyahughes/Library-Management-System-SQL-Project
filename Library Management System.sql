CREATE DATABASE LibraryManagementSystem;

USE LibraryManagementSystem;

CREATE TABLE Books (
	Book_ID INT PRIMARY KEY,
    Title VARCHAR(255),
    Author_ID INT,
    Genre VARCHAR(100),
    Publication_Year INT,
    ISBN VARCHAR(13)
);

CREATE TABLE Authors(
	Author_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Birth_Year INT,
    Nationality VARCHAR(100)
);

CREATE TABLE Members (
	Member_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Join_Date DATE,
    Email VARCHAR(255)
);

CREATE TABLE Checkouts (
	Checkout_ID INT PRIMARY KEY,
    Member_ID INT,
    Book_ID INT,
    Checkout_Date DATE,
    Due_Date DATE,
    FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID),
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID)
);

CREATE TABLE Returns (
	Return_ID INT PRIMARY KEY,
    Checkout_ID INT,
    Return_Date DATE,
	FOREIGN KEY (Checkout_ID) REFERENCES Checkouts(Checkout_ID)
);

INSERT INTO Books (Book_ID, Title, Author_ID, Genre, Publication_Year, ISBN) VALUES
(1, 'The Great Gatsby', 1, 'Fiction', 1925, '9780743273565'),
(2, '1984', 2, 'Dystopian', 1949, '9780451524935'),
(3, 'To Kill a Mockingbird', 3, 'Fiction', 1960, '9780061120084'),
(4, 'The Catcher in the Rye', 4, 'Fiction', 1951, '9780316769488'),
(5, 'Moby Dick', 5, 'Adventure', 1851, '9781853260087'),
(6, 'Pride and Prejudice', 6, 'Romance', 1813, '9781503290563'),
(7, 'The Hobbit', 7, 'Fantasy', 1937, '9780345339683'),
(8, 'War and Peace', 8, 'Historical Fiction', 1869, '9780307388803'),
(9, 'The Odyssey', 9, 'Epic', 8, '9780140268867'),
(10, 'Crime and Punishment', 10, 'Philosophical Fiction', 1866, '9780140449136'),
(11, 'Brave New World', 2, 'Dystopian', 1932, '9780060850524'),
(12, 'The Divine Comedy', 11, 'Poetry', 1320, '9780140448955'),
(13, 'Les Misérables', 12, 'Historical Fiction', 1862, '9780451419439'),
(14, 'Don Quixote', 13, 'Novel', 1605, '9780060934347'),
(15, 'The Brothers Karamazov', 10, 'Philosophical Fiction', 1880, '9780140449242'),
(16, 'Wuthering Heights', 14, 'Romance', 1847, '9780141439556'),
(17, 'Jane Eyre', 14, 'Gothic Fiction', 1847, '9780141441146'),
(18, 'The Iliad', 9, 'Epic', 750, '9780140275360'),
(19, 'Anna Karenina', 8, 'Realist Fiction', 1877, '9780140449174'),
(20, 'The Picture of Dorian Gray', 15, 'Philosophical Fiction', 1890, '9780141439570');

INSERT INTO Authors (Author_ID, Name, Birth_Year, Nationality) VALUES
(1, 'F. Scott Fitzgerald', 1896, 'American'),
(2, 'George Orwell', 1903, 'British'),
(3, 'Harper Lee', 1926, 'American'),
(4, 'J.D. Salinger', 1919, 'American'),
(5, 'Herman Melville', 1819, 'American'),
(6, 'Jane Austen', 1775, 'British'),
(7, 'J.R.R. Tolkien', 1892, 'British'),
(8, 'Leo Tolstoy', 1828, 'Russian'),
(9, 'Homer', 800, 'Greek'),
(10, 'Fyodor Dostoevsky', 1821, 'Russian'),
(11, 'Dante Alighieri', 1265, 'Italian'),
(12, 'Victor Hugo', 1802, 'French'),
(13, 'Miguel de Cervantes', 1547, 'Spanish'),
(14, 'Emily Brontë', 1818, 'British'),
(15, 'Oscar Wilde', 1854, 'Irish');

INSERT INTO Members (Member_ID, Name, Join_Date, Email) VALUES
(1, 'Alice Johnson', '2023-01-15', 'alice.johnson@example.com'),
(2, 'Bob Smith', '2022-06-10', 'bob.smith@example.com'),
(3, 'Charlie Brown', '2021-09-30', 'charlie.brown@example.com'),
(4, 'David Williams', '2022-03-20', 'david.williams@example.com'),
(5, 'Eve Carter', '2023-05-25', 'eve.carter@example.com'),
(6, 'Frank Moore', '2021-08-12', 'frank.moore@example.com'),
(7, 'Grace Lee', '2022-11-10', 'grace.lee@example.com'),
(8, 'Hannah Davis', '2023-04-18', 'hannah.davis@example.com'),
(9, 'Ivy Harris', '2021-02-25', 'ivy.harris@example.com'),
(10, 'Jackie Kim', '2023-06-03', 'jackie.kim@example.com'),
(11, 'Liam Turner', '2022-09-08', 'liam.turner@example.com'),
(12, 'Mona Scott', '2021-11-22', 'mona.scott@example.com'),
(13, 'Nathan Green', '2022-07-19', 'nathan.green@example.com'),
(14, 'Olivia Taylor', '2023-02-14', 'olivia.taylor@example.com'),
(15, 'Paul Walker', '2021-12-05', 'paul.walker@example.com');

INSERT INTO Checkouts (Checkout_ID, Member_ID, Book_ID, Checkout_Date, Due_Date) VALUES
(1, 1, 1, '2023-01-20', '2023-02-20'),
(2, 2, 2, '2022-06-15', '2022-07-15'),
(3, 3, 3, '2021-09-10', '2021-10-10'),
(4, 4, 4, '2022-03-22', '2022-04-22'),
(5, 5, 5, '2023-05-30', '2023-06-30'),
(6, 6, 6, '2021-08-01', '2021-08-31'),
(7, 7, 7, '2022-11-01', '2022-12-01'),
(8, 8, 8, '2023-04-10', '2023-05-10'),
(9, 9, 9, '2021-02-28', '2021-03-28'),
(10, 10, 10, '2023-06-07', '2023-07-07'),
(11, 11, 11, '2022-09-12', '2022-10-12'),
(12, 12, 12, '2021-11-30', '2021-12-30'),
(13, 13, 13, '2022-07-22', '2022-08-22'),
(14, 14, 14, '2023-02-18', '2023-03-18'),
(15, 15, 15, '2021-12-08', '2022-01-08');

INSERT INTO Returns (Return_ID, Checkout_ID, Return_Date) VALUES
(1, 1, '2023-02-15'),
(2, 2, '2022-07-10'),
(3, 3, '2021-10-05'),
(4, 4, '2022-04-01'),
(5, 5, '2023-06-10'),
(6, 6, '2021-08-25'),
(7, 7, '2022-11-15'),
(8, 8, '2023-05-05'),
(9, 9, '2021-03-05'),
(10, 10, '2023-06-25'),
(11, 11, '2022-10-08'),
(12, 12, '2021-12-20'),
(13, 13, '2022-08-02'),
(14, 14, '2023-03-05'),
(15, 15, '2022-01-05');

SELECT * FROM Books;

SELECT * FROM Authors;

SELECT * FROM Members;

SELECT * FROM Checkouts;

SELECT * FROM Returns;

SELECT B.Title, COUNT(C.Checkout_ID) AS Checkout_Count
FROM Books B
JOIN Checkouts C ON B.Book_ID = C.Book_ID
GROUP BY B.Book_ID
ORDER BY Checkout_Count DESC;

SELECT M.Name, COUNT(C.Checkout_ID) AS Checkout_Count
FROM Members M
JOIN Checkouts C ON M.Member_ID = C.Member_ID
GROUP BY M.Member_ID
ORDER BY Checkout_Count DESC;

SELECT B.Title, COUNT(R.Return_ID) AS Return_Count
FROM Books B
JOIN Checkouts C ON B.Book_ID = C.Book_ID
JOIN Returns R ON C.Checkout_ID = R.Checkout_ID
GROUP BY B.Book_ID
ORDER BY Return_Count DESC;

SELECT B.Title, M.Name AS Member_Name, C.Checkout_Date, C.Due_Date
FROM Books B
JOIN Checkouts C ON B.Book_ID = C.Book_ID
JOIN Members M ON C.Member_ID = M.Member_ID
LEFT JOIN Returns R ON C.Checkout_ID = R.Checkout_ID
WHERE R.Return_ID IS NULL;

SELECT B.Title, AVG(DATEDIFF(R.Return_Date, C.Checkout_Date)) AS Avg_Duration
FROM Books B
JOIN Checkouts C ON B.Book_ID = C.Book_ID
JOIN Returns R ON C.Checkout_ID = R.Checkout_ID
GROUP BY B.Book_ID;

SELECT B.Title, M.Name AS Member_Name, C.Due_Date
FROM Books B
JOIN Checkouts C ON B.Book_ID = C.Book_ID
JOIN Members M ON C.Member_ID = M.Member_ID
LEFT JOIN Returns R ON C.Checkout_ID = R.Checkout_ID
WHERE C.Due_Date < CURDATE() AND R.Return_ID IS NULL;

-- Example of filtering by genre
SELECT B.Title, COUNT(C.Checkout_ID) AS Checkout_Count
FROM Books B
JOIN Checkouts C ON B.Book_ID = C.Book_ID
WHERE B.Genre = 'Fiction'
GROUP BY B.Book_ID
ORDER BY Checkout_Count DESC;