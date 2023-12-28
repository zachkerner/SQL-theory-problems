SELECT authors.name AS "Author", COUNT(authors_books.book_id) AS "Number of Books", ROUND(AVG(books.page_count)) AS "Average Page Count" 
FROM authors
LEFT JOIN authors_books
ON authors.id = authors_books.author_id
LEFT JOIN books
ON books.id = authors_books.book_id
GROUP BY "Author";
