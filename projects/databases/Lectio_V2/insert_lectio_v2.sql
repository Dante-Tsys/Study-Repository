use Lectio_V2;

/* Status */
select * from status;
truncate table status;
insert into status (name, category, description) values
('In Stock','Book','Book available'),('Out of Stock','Book','Book unavailable'),
('Not Started','Promotion','Promotion not started'),('In Progress','Promotion','Promotion active'),('Completed','Promotion','Promotion ended'),
('Not Started','Collaboration','Collab not started'),('In Progress','Collaboration','Collab active'),('Completed','Collaboration','Collab done'),
('Not Started','Reading','Book not opened'),('Reading','Reading','Book in progress'),('Finished','Reading','Book completed'),
('Pending','Payment','Awaiting payment'),('Paid','Payment','Payment completed'),('Failed','Payment','Payment failed'),
('Pending','Sale','Sale pending'),('Completed','Sale','Sale completed'),('Cancelled','Sale','Sale cancelled'),
('Active','Employee','Employee active'),('Inactive','Employee','Employee inactive');

/* Genre */
select * from genre;
truncate table genre;
insert into genre (name,image_path,description) values
('Fantasy','/img/genre/fantasy.jpg','Magic and mythical worlds'),
('Sci-Fi','/img/genre/scifi.jpg','Futuristic science'),
('Mystery','/img/genre/mystery.jpg','Investigations'),
('Romance','/img/genre/romance.jpg','Love stories'),
('Horror','/img/genre/horror.jpg','Fear and suspense'),
('Adventure','/img/genre/adventure.jpg','Epic journeys'),
('Drama','/img/genre/drama.jpg','Emotional narratives'),
('Thriller','/img/genre/thriller.jpg','High tension'),
('Cyberpunk','/img/genre/cyberpunk.jpg','Tech dystopia'),
('Historical','/img/genre/historical.jpg','Past events');

/* Author */
select * from author;
truncate table author;
insert into author (name,image_path,description) values
('Lucas Andrade','/img/authors/lucas.jpg','Brazilian fantasy author'),
('Marina Costa','/img/authors/marina.jpg','Sci-fi specialist'),
('Pedro Oliveira','/img/authors/pedro.jpg','Mystery writer'),
('Ana Martins','/img/authors/ana.jpg','Romance novelist'),
('Rafael Souza','/img/authors/rafael.jpg','Horror creator'),
('Juliana Lima','/img/authors/juliana.jpg','Adventure storyteller'),
('Carlos Ferreira','/img/authors/carlos.jpg','Drama author'),
('Fernanda Alves','/img/authors/fernanda.jpg','Thriller expert'),
('Bruno Ribeiro','/img/authors/bruno.jpg','Cyberpunk writer'),
('Patricia Gomes','/img/authors/patricia.jpg','Historical fiction'),
('Gabriel Barbosa','/img/authors/gabriel.jpg','Dark fantasy specialist'),
('Camila Fernandes','/img/authors/camila.jpg','Romantic drama writer'),
('Thiago Carvalho','/img/authors/thiago.jpg','Science fiction novelist'),
('Beatriz Rocha','/img/authors/beatriz.jpg','Mystery and crime author'),
('Eduardo Mendes','/img/authors/eduardo.jpg','Psychological thriller writer'),
('Larissa Teixeira','/img/authors/larissa.jpg','Young adult fiction author'),
('Felipe Araujo','/img/authors/felipe.jpg','Adventure and action writer'),
('Renata Correia','/img/authors/renata.jpg','Contemporary fiction novelist'),
('Gustavo Nogueira','/img/authors/gustavo.jpg','Cyberpunk and dystopian author'),
('Aline Batista','/img/authors/aline.jpg','Supernatural horror specialist'),
('Rodrigo Freitas','/img/authors/rodrigo.jpg','Epic saga creator'),
('Vanessa Cardoso','/img/authors/vanessa.jpg','Historical romance author'),
('Marcelo Pacheco','/img/authors/marcelo.jpg','Philosophical fiction writer'),
('Tatiane Duarte','/img/authors/tatiane.jpg','Urban fantasy author'),
('Leonardo Farias','/img/authors/leonardo.jpg','Suspense and thriller novelist');

/* Publisher */
select * from publisher;
truncate table publisher;
insert into publisher (name,address,phone,email,cnpj) values
('Atlas Publisher','Rua A, 100','11911111111','contato@atlas.com','12345678000101'),
('New Age Publisher','Rua B, 200','11922222222','contato@novaera.com','12345678000102'),
('Horizon Publisher','Rua C, 300','11933333333','contato@horizonte.com','12345678000103'),
('Prisma Publisher','Rua D, 400','11944444444','contato@prisma.com','12345678000104'),
('Aurora Publisher','Rua E, 500','11955555555','contato@aurora.com','12345678000105'),
('Cosmos Publisher','Rua F, 600','11966666666','contato@cosmos.com','12345678000106'),
('Nexus Publisher','Rua G, 700','11977777777','contato@nexus.com','12345678000107'),
('Alfa Publisher','Rua H, 800','11988888888','contato@alfa.com','12345678000108'),
('Beta Publisher','Rua I, 900','11999999999','contato@beta.com','12345678000109'),
('Omega Publisher','Rua J, 1000','11900000000','contato@omega.com','12345678000110');

/* Book */
select * from book;
truncate table book;
insert into book (isbn,title,edition,description,release_date,page_count,purchase_price,sale_price,stock,image_path,book_path,status_id) values
('9780000000001','Shadow Empire','1st','Empire collapse','2019-01-01',400,20,40,10,'/img/books/1.jpg','/books/1.pdf',1),
('9780000000002','Digital Mind','1st','AI awakening','2020-02-10',320,18,36,5,'/img/books/2.jpg','/books/2.pdf',1),
('9780000000003','Lost Clue','2nd','Detective mystery','2018-03-15',280,15,30,0,'/img/books/3.jpg','/books/3.pdf',2),
('9780000000004','Love Again','1st','Romantic journey','2021-04-20',310,17,34,7,'/img/books/4.jpg','/books/4.pdf',1),
('9780000000005','Night Terror','1st','Haunted house','2017-05-05',350,16,32,0,'/img/books/5.jpg','/books/5.pdf',2),
('9780000000006','Endless Road','3rd','Epic adventure','2022-06-18',500,25,50,12,'/img/books/6.jpg','/books/6.pdf',1),
('9780000000007','Broken Lives','1st','Emotional drama','2016-07-22',290,14,28,4,'/img/books/7.jpg','/books/7.pdf',1),
('9780000000008','Final Target','1st','Action thriller','2023-08-30',420,22,44,6,'/img/books/8.jpg','/books/8.pdf',1),
('9780000000009','Neon Future','1st','Cyberpunk dystopia','2024-09-09',380,21,42,8,'/img/books/9.jpg','/books/9.pdf',1),
('9780000000010','Ancient War','Collector','Historic battles','2015-10-10',600,30,60,2,'/img/books/10.jpg','/books/10.pdf',1),
('9780000000011','Crystal Kingdom','1st','Magical realm in danger','2019-02-01',410,21,42,9,'/img/books/11.jpg','/books/11.pdf',1),
('9780000000012','Binary Dreams','1st','AI develops emotions','2020-03-12',330,19,38,6,'/img/books/12.jpg','/books/12.pdf',1),
('9780000000013','Hidden Truth','2nd','Secrets beneath the city','2018-04-18',295,16,32,0,'/img/books/13.jpg','/books/13.pdf',2),
('9780000000014','Hearts Apart','1st','Love across distance','2021-05-25',310,18,36,7,'/img/books/14.jpg','/books/14.pdf',1),
('9780000000015','Dark Whispers','1st','Voices from beyond','2017-06-30',360,17,34,0,'/img/books/15.jpg','/books/15.pdf',2),
('9780000000016','Golden Path','3rd','Journey to destiny','2022-07-10',520,26,52,11,'/img/books/16.jpg','/books/16.pdf',1),
('9780000000017','Silent Tears','1st','Family tragedy unfolds','2016-08-14',280,15,30,5,'/img/books/17.jpg','/books/17.pdf',1),
('9780000000018','Deadly Chase','1st','Race against time','2023-09-20',430,23,46,8,'/img/books/18.jpg','/books/18.pdf',1),
('9780000000019','Steel Horizon','1st','Future ruled by machines','2024-10-11',390,22,44,10,'/img/books/19.jpg','/books/19.pdf',1),
('9780000000020','War of Crowns','Collector','Battle for supremacy','2015-11-22',610,31,62,3,'/img/books/20.jpg','/books/20.pdf',1),
('9780000000021','Frozen Legacy','1st','Ancient power returns','2019-01-15',405,21,42,6,'/img/books/21.jpg','/books/21.pdf',1),
('9780000000022','Virtual Fear','1st','Nightmares in VR','2020-02-19',340,18,36,4,'/img/books/22.jpg','/books/22.pdf',1),
('9780000000023','Final Secret','2nd','Truth revealed','2018-03-25',300,16,32,0,'/img/books/23.jpg','/books/23.pdf',2),
('9780000000024','Love Returns','1st','Second chances','2021-04-30',315,17,34,7,'/img/books/24.jpg','/books/24.pdf',1),
('9780000000025','Haunted Mind','1st','Psychological horror','2017-05-10',355,17,34,0,'/img/books/25.jpg','/books/25.pdf',2),
('9780000000026','Infinite Quest','3rd','Legendary adventure','2022-06-18',540,27,54,12,'/img/books/26.jpg','/books/26.pdf',1),
('9780000000027','Broken Promise','1st','Betrayal and revenge','2016-07-27',285,15,30,6,'/img/books/27.jpg','/books/27.pdf',1),
('9780000000028','Last Escape','1st','Survival thriller','2023-08-05',440,24,48,9,'/img/books/28.jpg','/books/28.pdf',1),
('9780000000029','Neural Storm','1st','Brain hacking future','2024-09-14',395,22,44,7,'/img/books/29.jpg','/books/29.pdf',1),
('9780000000030','Empire Rising','Collector','Rise of a ruler','2015-10-19',620,32,64,2,'/img/books/30.jpg','/books/30.pdf',1),
('9780000000031','Shadow Forest','1st','Forest hides secrets','2019-02-23',415,21,42,8,'/img/books/31.jpg','/books/31.pdf',1),
('9780000000032','Code Breaker','1st','Decrypting mystery','2020-03-30',325,19,38,5,'/img/books/32.jpg','/books/32.pdf',1),
('9780000000033','Vanished','2nd','Missing person case','2018-04-05',290,16,32,0,'/img/books/33.jpg','/books/33.pdf',2),
('9780000000034','Love and War','1st','Romance in wartime','2021-05-16',320,18,36,6,'/img/books/34.jpg','/books/34.pdf',1),
('9780000000035','Night Creature','1st','Unknown predator','2017-06-28',365,17,34,0,'/img/books/35.jpg','/books/35.pdf',2),
('9780000000036','Treasure Hunt','3rd','Search for gold','2022-07-07',510,26,52,10,'/img/books/36.jpg','/books/36.pdf',1),
('9780000000037','Lost Souls','1st','Drama of redemption','2016-08-18',275,14,28,4,'/img/books/37.jpg','/books/37.pdf',1),
('9780000000038','Final Mission','1st','Ultimate operation','2023-09-29',450,24,48,9,'/img/books/38.jpg','/books/38.pdf',1),
('9780000000039','Cyber Age','1st','Digital civilization','2024-10-03',385,21,42,7,'/img/books/39.jpg','/books/39.pdf',1),
('9780000000040','Ancient Empire','Collector','Historic conquest','2015-11-11',630,33,66,3,'/img/books/40.jpg','/books/40.pdf',1),
('9780000000041','Mystic River','1st','River of magic','2019-01-09',400,20,40,6,'/img/books/41.jpg','/books/41.pdf',1),
('9780000000042','System Override','1st','Machine rebellion','2020-02-14',335,18,36,5,'/img/books/42.jpg','/books/42.pdf',1),
('9780000000043','Clue Hunter','2nd','Solving puzzles','2018-03-21',305,16,32,0,'/img/books/43.jpg','/books/43.pdf',2),
('9780000000044','Forever Mine','1st','Romantic destiny','2021-04-17',318,17,34,6,'/img/books/44.jpg','/books/44.pdf',1),
('9780000000045','Fear Within','1st','Inner demons','2017-05-22',345,17,34,0,'/img/books/45.jpg','/books/45.pdf',2),
('9780000000046','Hero Path','3rd','Rise of hero','2022-06-30',525,27,54,11,'/img/books/46.jpg','/books/46.pdf',1),
('9780000000047','Life Drama','1st','Emotional life','2016-07-08',290,15,30,5,'/img/books/47.jpg','/books/47.pdf',1),
('9780000000048','Critical Point','1st','High stakes','2023-08-19',435,23,46,8,'/img/books/48.jpg','/books/48.pdf',1),
('9780000000049','Future Code','1st','Programming destiny','2024-09-25',390,22,44,9,'/img/books/49.jpg','/books/49.pdf',1),
('9780000000050','Battle Legacy','Collector','Legacy of war','2015-10-30',640,34,68,2,'/img/books/50.jpg','/books/50.pdf',1);

/* Book_Genre */
select * from book_genre;
truncate table book_genre;
insert into book_genre (book_id, genre_id) values
(1,3),(1,7),(1,10),(2,1),(2,6),(2,9),(3,2),(3,5),(3,8),(4,4),(4,9),(4,1),
(5,7),(5,2),(5,6),(6,10),(6,3),(6,8),(7,5),(7,1),(7,9),(8,6),(8,4),(8,2),
(9,8),(9,3),(9,7),(10,2),(10,9),(10,5),(11,1),(11,8),(11,4),(12,6),(12,10),(12,3),
(13,9),(13,2),(13,7),(14,4),(14,1),(14,8),(15,5),(15,9),(15,3),(16,7),(16,2),(16,10),
(17,8),(17,6),(17,1),(18,3),(18,5),(18,9),(19,2),(19,10),(19,4),(20,6),(20,8),(20,1),
(21,9),(21,3),(21,7),(22,4),(22,6),(22,10),(23,1),(23,5),(23,8),(24,7),(24,2),(24,9),
(25,3),(25,6),(25,10),(26,8),(26,4),(26,1),(27,5),(27,9),(27,2),(28,10),(28,7),(28,3),
(29,6),(29,1),(29,8),(30,4),(30,9),(30,5),(31,2),(31,7),(31,10),(32,8),(32,3),(32,6),
(33,1),(33,4),(33,9),(34,5),(34,10),(34,2),(35,7),(35,8),(35,3),(36,6),(36,1),(36,4),
(37,9),(37,5),(37,2),(38,10),(38,6),(38,8),(39,3),(39,7),(39,1),(40,4),(40,2),(40,9),
(41,8),(41,5),(41,10),(42,1),(42,6),(42,3),(43,7),(43,9),(43,4),(44,2),(44,8),(44,5),
(45,10),(45,3),(45,6),(46,9),(46,1),(46,7),(47,4),(47,10),(47,8),(48,5),(48,2),(48,6),
(49,3),(49,9),(49,1),(50,7),(50,4),(50,10);

/* Book_Author */
select * from book_author;
truncate table book_author;
insert into book_author (book_id,author_id) values
(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),
(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),
(21,21),(22,22),(23,23),(24,24),(25,25),
(26,1),(27,2),(28,3),(29,4),(30,5),(31,6),(32,7),(33,8),(34,9),(35,10),
(36,11),(37,12),(38,13),(39,14),(40,15),(41,16),(42,17),(43,18),(44,19),(45,20),
(46,21),(47,22),(48,23),(49,24),(50,25);

/* Book_Publisher */
select * from book_publisher;
truncate table book_publisher;
insert into book_publisher (book_id, publisher_id) VALUES
(1,7),(2,3),(3,9),(4,1),(5,6),(6,2),(7,10),(8,4),(9,8),(10,5),
(11,2),(12,7),(13,1),(14,9),(15,4),(16,6),(17,3),(18,8),(19,10),(20,5),
(21,6),(22,1),(23,7),(24,3),(25,9),(26,4),(27,2),(28,8),(29,5),(30,10),
(31,3),(32,6),(33,1),(34,7),(35,4),(36,9),(37,2),(38,5),(39,8),(40,10),
(41,1),(42,4),(43,6),(44,3),(45,9),(46,7),(47,5),(48,2),(49,10),(50,8);

/* Promotion */
select * from promotion;
truncate table promotion;
insert into promotion (name,discount_percent,start_date,end_date,status_id) values
('Summer Sale',10,'2025-01-01','2025-03-31',1), ('Winter Sale',15,'2025-06-01','2025-08-31',1),
('Black Friday',40,'2025-11-25','2025-11-30',1), ('Cyber Monday',35,'2025-12-01','2025-12-02',1),
('New Year',20,'2026-01-01','2026-01-10',1), ('Flash Sale',25,'2025-04-10','2025-04-12',1),
('Weekend Sale',12,'2025-05-03','2025-05-05',1), ('Special Event',18,'2025-07-15','2025-07-20',1),
('Clearance',50,'2025-09-01','2025-09-30',1), ('Anniversary',30,'2025-10-10','2025-10-15',1);

/* Book_Promotion */
select * from book_promotion;
truncate table book_promotion;
INSERT INTO book_promotion (book_id, promotion_id) VALUES
(2,5), (7,1), (12,9), (25,3), (41,10), 
(18,6), (33,2), (5,8), (29,4), (14,7), 
(46,1), (9,5), (38,9), (21,3),(50,6), 
(1,2), (27,8), (35,4), (16,10), (44,7),
(6,1), (31,5), (48,9), (11,6), (23,2), 
(39,8), (4,3), (28,10), (19,4), (42,7);

/* Users */
select * from user_account;
truncate table user_account;
insert into user_account (name,birth_date,gender,cpf,email,phone,password_hash) values
('João Silva','1990-01-01','M','11111111111','joao@email.com','11911110001','hash1'),
('Maria Souza','1992-02-02','F','22222222222','maria@email.com','11911110002','hash2'),
('Carlos Lima','1988-03-03','M','33333333333','carlos@email.com','11911110003','hash3'),
('Ana Costa','1995-04-04','F','44444444444','ana@email.com','11911110004','hash4'),
('Pedro Rocha','1991-05-05','M','55555555555','pedro@email.com','11911110005','hash5'),
('Julia Alves','1993-06-06','F','66666666666','julia@email.com','11911110006','hash6'),
('Lucas Pinto','1989-07-07','M','77777777777','lucas@email.com','11911110007','hash7'),
('Fernanda Dias','1994-08-08','F','88888888888','fernanda@email.com','11911110008','hash8'),
('Rafael Teixeira','1996-09-09','M','99999999999','rafael@email.com','11911110009','hash9'),
('Patricia Melo','1997-10-10','F','00000000000','patricia@email.com','11911110010','hash10');

/* User Library */
select * from user_library;
truncate table user_library;
insert into user_library (added_date,current_page,user_id,book_id,status_id) values
('2025-01-01',0,1,1,9),('2025-01-02',120,1,11,10),('2025-01-03',400,1,21,11),
('2025-01-04',50,2,2,10),('2025-01-05',0,2,12,9),('2025-01-06',320,2,22,11),
('2025-01-07',280,3,3,11),('2025-01-08',60,3,13,10),('2025-01-09',0,3,23,9),
('2025-01-10',120,4,4,10),('2025-01-11',310,4,14,11),('2025-01-12',0,4,24,9),
('2025-01-13',0,5,5,9),('2025-01-14',150,5,15,10),('2025-01-15',350,5,25,11),
('2025-01-16',300,6,6,11),('2025-01-17',0,6,16,9),('2025-01-18',200,6,26,10),
('2025-01-19',75,7,7,10),('2025-01-20',290,7,17,11),('2025-01-21',0,7,27,9),
('2025-01-22',0,8,8,9),('2025-01-23',180,8,18,10),('2025-01-24',420,8,28,11),
('2025-01-25',200,9,9,10),('2025-01-26',0,9,19,9),('2025-01-27',380,9,29,11),
('2025-01-28',600,10,10,11),('2025-01-29',0,10,20,9),('2025-01-30',250,10,30,10),
('2025-01-31',0,1,31,9),('2025-02-01',140,1,32,10),('2025-02-02',390,1,33,11),
('2025-02-03',220,2,34,10),('2025-02-04',0,2,35,9),('2025-02-05',410,2,36,11),
('2025-02-06',75,3,37,10),('2025-02-07',0,3,38,9),('2025-02-08',305,3,39,11),
('2025-02-09',180,4,40,10),('2025-02-10',0,4,41,9),('2025-02-11',520,4,42,11),
('2025-02-12',260,5,43,10),('2025-02-13',0,5,44,9),('2025-02-14',340,5,45,11),
('2025-02-15',0,6,46,9),('2025-02-16',195,6,47,10),('2025-02-17',410,6,48,11),
('2025-02-18',130,7,49,10),('2025-02-19',0,7,50,9),('2025-02-20',285,7,1,11),
('2025-02-21',0,8,2,9),('2025-02-22',165,8,3,10),('2025-02-23',375,8,4,11),
('2025-02-24',90,9,5,10),('2025-02-25',0,9,6,9),('2025-02-26',430,9,7,11),
('2025-02-27',210,10,8,10),('2025-02-28',0,10,9,9),('2025-03-01',390,10,10,11);

/* Wishlist */
select * from whishlist;
truncate table wishlist;
insert into whishlist (user_id, book_id) VALUES
(1,4),(1,19),(1,45),(2,8),(2,17),(2,36),(2,41),
(3,10),(3,22),(3,47),(4,3),(4,26),(4,38),(4,49),
(5,1),(5,14),(5,28),(5,40),(6,7),(6,18),(6,34),(6,50),
(7,5),(7,23),(7,31),(7,44),(8,9),(8,20),(8,32),(8,46),
(9,2),(9,13),(9,27),(9,48),(10,6),(10,15),(10,29),(10,37),(10,43),(10,50);

/* Review */
select * from review;
truncate table review;
insert into review (rating,comment,user_id,book_id) values
(5,'Excellent book',1,1),(4,'Very good',2,2),(3,'Average',3,3),(5,'Loved it',4,4),(2,'Not great',5,5),
(5,'Amazing',6,6),(4,'Good read',7,7),(3,'Okay',8,8),(5,'Masterpiece',9,9),(4,'Very interesting',10,10),
(4,'Really enjoyed it',1,11),(5,'Fantastic sequel',2,12),(2,'Could be better',3,13),(4,'Nice story',4,14),(3,'Decent read',5,15),
(5,'Highly recommend',6,16),(4,'Well written',7,17),(3,'It was fine',8,18),(5,'One of my favorites',9,19),(4,'Very entertaining',10,20);

/* Collaboration */
select * from collaboration;
truncate table collaboration;
insert into collaboration (collaboration_date,type,user_id,status_id) values
('2025-01-01','Translation',1,6),('2025-01-02','Donation',2,7),('2025-01-03','Translation',3,8),('2025-01-04','Donation',4,6),('2025-01-05','Translation',5,7),
('2025-01-06','Donation',6,8),('2025-01-07','Translation',7,6),('2025-01-08','Donation',8,7),('2025-01-09','Translation',9,8),('2025-01-10','Donation',10,7);

/* Card */
select * from card;
truncate table card;
insert into card (number,cardholder,expiration_date,cvv,user_id) values
('4111111111111111','João Silva','2028-01-01','123',1),('4111111111111112','Maria Souza','2028-02-01','124',2),
('4111111111111113','Carlos Lima','2028-03-01','125',3),('4111111111111114','Ana Costa','2028-04-01','126',4),
('4111111111111115','Pedro Rocha','2028-05-01','127',5),('4111111111111116','Julia Alves','2028-06-01','128',6),
('4111111111111117','Lucas Pinto','2028-07-01','129',7),('4111111111111118','Fernanda Dias','2028-08-01','130',8),
('4111111111111119','Rafael Teixeira','2028-09-01','131',9),('4111111111111120','Patricia Melo','2028-10-01','132',10);

/* Bankslip */
select * from bankslip;
truncate table bankslip;
insert into bankslip (issue_date,expiration_date,number,status_id) values
('2025-01-01','2025-01-10','00000000000000000000000000000000000000000000001',12),
('2025-01-02','2025-01-11','00000000000000000000000000000000000000000000002',13),
('2025-01-03','2025-01-12','00000000000000000000000000000000000000000000003',14),
('2025-01-04','2025-01-13','00000000000000000000000000000000000000000000004',12),
('2025-01-05','2025-01-14','00000000000000000000000000000000000000000000005',13),
('2025-01-06','2025-01-15','00000000000000000000000000000000000000000000006',14),
('2025-01-07','2025-01-16','00000000000000000000000000000000000000000000007',12),
('2025-01-08','2025-01-17','00000000000000000000000000000000000000000000008',13),
('2025-01-09','2025-01-18','00000000000000000000000000000000000000000000009',14),
('2025-01-10','2025-01-19','00000000000000000000000000000000000000000000010',13);

/* Pix */
select * from pix;
truncate table pix;
insert into pix (payment_date,pix_key,status_id) values
('2025-01-01','nofunwuipbiybwONETBNE',13),('2025-01-02','pqlksdnfhytrgfhjdiwuyhdjsio',13),('2025-01-03','umjihyutrfdcfvgbhnm',12),
('2025-01-04','boinrauoernabuonu9g',14),('2025-01-05','lkjniuhbgfcdesdxcfghjkl',13),('2025-01-06','mkibrszhctesrcvkyrsdesrgcghvjhbljnop',12),
('2025-01-07','ovningurebnuinubne',13),('2025-01-08','ceibeiybvywpbrvyw8getyvvqc',13),('2025-01-09','moihiygtftyedsrewzcyvu',14),
('2025-01-10','aeiubnviabeprbvpbBR',13);

/* Payment Method */
select * from payment_method;
truncate table paymenth_method;
insert into payment_method (payment_type) values
('Card'),('Card'),('Card'),('Card'),('Bankslip'),('Bankslip'),('Pix'),('Pix'),('Pix'),('Card');

/* Payment Card */
select * from payment_card;
truncate table payment_card;
insert into payment_card (payment_method_id,card_id) values (1,1),(2,2),(3,3),(4,4),(10,5);
/* Payment Bankslip */
select * from payment_bankslip;
truncate table payment_bankslip;
insert into payment_bankslip (payment_method_id,bankslip_id) values (5,1),(6,2);
/* Payment Pix */
select * from payment_pix;
truncate table payent_pix;
insert into payment_pix (payment_method_id,pix_id) values (7,1),(8,2),(9,3);

/* Sale */
select * from sale;
truncate table sale;
insert into sale (sale_date,total_amount,status_id,user_id,payment_method_id) values
('2025-02-01',40,16,1,1),('2025-02-02',36,16,2,2),('2025-02-03',30,15,3,3),('2025-02-04',34,16,4,4),('2025-02-05',32,17,5,5),
('2025-02-06',50,16,6,6),('2025-02-07',28,15,7,7),('2025-02-08',44,16,8,8),('2025-02-09',42,16,9,9),('2025-02-10',60,16,10,10);

/* Sale Item */
select * from sale_item;
truncate table sale_item;
insert into sale_item (quantity,unit_price,book_id,sale_id) values
(1,40,1,1),(1,36,2,2),(1,30,3,3),(1,34,4,4),(1,32,5,5),(1,50,6,6),(1,28,7,7),(1,44,8,8),(1,42,9,9),(1,60,10,10);

/* Department */
select * from department;
truncate table department;
insert into department (name) values
('Administration'),('Sales'),('IT'),('HR'),('Finance'),('Support'),('Logistics'),('Marketing'),('Legal'),('Operations');

/* Job Position */
select * from job_position;
truncate table job_position;
insert into job_position (name,level,base_salary,department_id) values
('Assistant','Junior',2000,1),('Seller','Junior',2200,2),('Developer','Full',5000,3),('HR Analyst','Full',4000,4),('Accountant','Full',4500,5),
('Support Tech','Junior',2500,6),('Coordinator','Senior',6000,7),('Manager','Senior',8000,8),('Lawyer','Senior',7000,9),('Director','Senior',12000,10);

/* Employee */
select * from employee;
truncate table employee;
insert into employee (full_name,cpf,rg,birth_date,gender,email,phone,address,adress_number,address_complement,district,city,state,cep,salary,hire_date,termination_date,job_position_id,department_id,status_id) values
('Employee One','10101010101','RG1','1990-01-01','M','emp1@email.com','11800000001','Street A','10','Apt 1','Center','São Paulo','SP','01000000',2000,'2020-01-01',null,1,1,18),
('Employee Two','20202020202','RG2','1991-02-02','F','emp2@email.com','11800000002','Street B','20','Apt 2','Center','São Paulo','SP','01000001',2200,'2020-02-01',null,2,2,18),
('Employee Three','30303030303','RG3','1992-03-03','M','emp3@email.com','11800000003','Street C','30','Apt 3','Center','São Paulo','SP','01000002',5000,'2020-03-01',null,3,3,18),
('Employee Four','40404040404','RG4','1993-04-04','F','emp4@email.com','11800000004','Street D','40','Apt 4','Center','São Paulo','SP','01000003',4000,'2020-04-01',null,4,4,18),
('Employee Five','50505050505','RG5','1994-05-05','M','emp5@email.com','11800000005','Street E','50','Apt 5','Center','São Paulo','SP','01000004',4500,'2020-05-01',null,5,5,18),
('Employee Six','60606060606','RG6','1995-06-06','F','emp6@email.com','11800000006','Street F','60','Apt 6','Center','São Paulo','SP','01000005',2500,'2020-06-01',null,6,6,18),
('Employee Seven','70707070707','RG7','1996-07-07','M','emp7@email.com','11800000007','Street G','70','Apt 7','Center','São Paulo','SP','01000006',6000,'2020-07-01',null,7,7,18),
('Employee Eight','80808080808','RG8','1997-08-08','F','emp8@email.com','11800000008','Street H','80','Apt 8','Center','São Paulo','SP','01000007',8000,'2020-08-01',null,8,8,18),
('Employee Nine','90909090909','RG9','1998-09-09','M','emp9@email.com','11800000009','Street I','90','Apt 9','Center','São Paulo','SP','01000008',7000,'2020-09-01',null,9,9,18),
('Employee Ten','11111111112','RG10','1999-10-10','F','emp10@email.com','11800000010','Street J','100','Apt 10','Center','São Paulo','SP','01000009',12000,'2020-10-01',null,10,10,18);