/* 
Dante Accinelli Primon, Computer Engineering, 2026
*/

--SELECT collumn_name FROM table_name;
select book_id, isbn, title, description, sale_price from book; 
select * from book;

--select collumn AS "text" from table;
select book_id, isbn as 'Book ISBN', title as 'Book Title', description as 'Book Description', sale_price as 'Book Price' from book;

--select collum from table WHERE collum conditions | = | < | > | <= | >= | != | is null | is not null | not |
select book_id, isbn, title, description, sale_price from book where sale_price > 40;
select book_id, isbn, title, description, sale_price from book where isbn = 9780000000008;
select book_id, isbn, title, description, sale_price from book where title != 'Final Target';

--select collum from table WHERE collum BETWEEN AND
select book_id, isbn, title, description, sale_price from book where sale_price between 40 and 50;

--select collum from table where collum LIKE
select book_id, isbn, title, description, sale_price from book where title like 's%';
select book_id, isbn, title, description, sale_price from book where title like '%s';
select book_id, isbn, title, description, sale_price from book where title like '%s%';

--select collum from table where collum IN
select book_id, isbn, title, description, sale_price from book where book_id in (1, 10, 47, 60, 72, 100);

--select DISTINCT collum from table;
select distinct stock from book;

--select TOP conditions collumn from table;
select top 10 * from book;
select top 10 * from book order by sale_price asc;
select top 10 * from book order by sale_price desc;

--select collum from table order by conditions;
select top 5 book_id, isbn, title, description from book;
select top 5 book_id, isbn, title, description from book order by isbn desc;

--select COUNT(collum) from table;
select count(book_id) from book;
select count(promotion_id) from promotion;
select count(distinct sale_price) from book;

--select SUM collum from table;
select sum(stock) from book;

--select AVG collum from table;
select avg(sale_price) from book;
select sum(sale_price) / count(book_id) from book;

--select MIN and MAX collum from table;
select min(sale_price) from book;
select max(sale_price) from book;

--INNER JOIN
select 
	b.book_id as 'Book ID', b.title as 'Title', a.name as 'Author'
from book as b
inner join book_author as ba on b.book_id = ba.book_id
inner join author as a on ba.author_id = a.author_id; --books and its authors

select 
    b.title as 'Title', g.name as 'Genre'
from book as b
inner join book_genre as bg on b.book_id = bg.book_id
inner join genre as g on bg.genre_id = g.genre_id; --books and its genres

--LEFT JOIN
select 
    b.title as 'Title', a.name as 'Author'
from book as b
left join book_author as ba on b.book_id = ba.book_id
left join author as a on ba.author_id = a.author_id; --books and its authors, even if there is none

--RIGHT JOIN
select 
    b.title as 'Title', a.name as 'Author'
from book as b
right join book_author as ba ON b.book_id = ba.book_id
right join author as a on ba.author_id = a.author_id; --all authros, even if there are no books

--FULL JOIN
select
    b.book_id as 'Book ID', b.title as 'Title', pr.promotion_id 'Promotion ID', pr.name as 'Promotion Name'
from book as b
full join book_promotion as bp 
    on b.book_id = bp.book_id
full join promotion as pr 
    on bp.promotion_id = pr.promotion_id; --all books and promotions

--SELF JOIN
select b1.title, b2.title, b1.stock
from book b1
join book b2
    on b1.stock = b2.stock
    and b1.book_id < b2.book_id; --books with same stock

--UNION
select name as 'Author'
from author
union
select name as 'Publisher'
from publisher;

select name, 'Author' as type
from author
union
select name, 'Publisher' as type
from publisher;

select title, 'In Stock' as status
from book
where stock > 0
union
select title, 'Out of Stock' as status
from book
where stock = 0;