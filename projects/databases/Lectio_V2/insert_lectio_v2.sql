/* 
Dante Accinelli Primon, Computer Engineering, 2026

Contents of this database:
-19 satus
-10 genres
-25 authors
-10 publishers
-100 books
-10 promotions
-10 users
-50 reviews
-10 cards
-10 bankslips
-10 pix
- 10 sales
*/

use Lectio_V2;

/* Status */
select * from status;
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
insert into author (name,image_path,description) values
('Lucas Almeida','/images/authors/lucas_almeida.jpg','Brazilian fiction author known for contemporary urban stories.'),
('Sofia Martinez','/images/authors/sofia_martinez.jpg','Spanish novelist specializing in historical drama.'),
('Daniel Schmidt','/images/authors/daniel_schmidt.jpg','German writer focused on psychological thrillers.'),
('Isabella Rossi','/images/authors/isabella_rossi.jpg','Italian author of romantic and literary fiction.'),
('James Walker','/images/authors/james_walker.jpg','British author known for crime and mystery novels.'),
('Camila Ferreira','/images/authors/camila_ferreira.jpg','Brazilian writer exploring social and cultural themes.'),
('Noah Dubois','/images/authors/noah_dubois.jpg','French novelist with a focus on philosophical fiction.'),
('Olivia Johnson','/images/authors/olivia_johnson.jpg','American author of bestselling young adult novels.'),
('Mateo Gonzalez','/images/authors/mateo_gonzalez.jpg','Argentinian author known for political fiction.'),
('Emma Svensson','/images/authors/emma_svensson.jpg','Swedish crime writer प्रसिद्ध for Nordic noir stories.'),
('Liam Murphy','/images/authors/liam_murphy.jpg','Irish author specializing in fantasy literature.'),
('Chloe Bernard','/images/authors/chloe_bernard.jpg','French romance novelist with international recognition.'),
('Gabriel Costa','/images/authors/gabriel_costa.jpg','Brazilian science fiction author exploring future societies.'),
('Mia Novak','/images/authors/mia_novak.jpg','Croatian author focused on literary fiction.'),
('Ethan Brown','/images/authors/ethan_brown.jpg','American thriller writer with multiple bestsellers.'),
('Hugo Silva','/images/authors/hugo_silva.jpg','Portuguese author known for drama and suspense.'),
('Ava Wilson','/images/authors/ava_wilson.jpg','Canadian author writing young adult fantasy series.'),
('Leon Fischer','/images/authors/leon_fischer.jpg','German fantasy and adventure novelist.'),
('Valentina Russo','/images/authors/valentina_russo.jpg','Italian romance and drama writer.'),
('Benjamin Lee','/images/authors/benjamin_lee.jpg','American author of technology-focused fiction.'),
('Julia Becker','/images/authors/julia_becker.jpg','German author writing contemporary fiction.'),
('Rafael Mendes','/images/authors/rafael_mendes.jpg','Brazilian mystery and crime novelist.'),
('Elena Petrova','/images/authors/elena_petrova.jpg','Russian author known for historical epics.'),
('Nathan Clark','/images/authors/nathan_clark.jpg','British author specializing in suspense thrillers.'),
('Sara Olsen','/images/authors/sara_olsen.jpg','Norwegian author writing literary and drama novels.');

/* Publisher */
select * from publisher;
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
('9780000000050','Battle Legacy','Collector','Legacy of war','2015-10-30',640,34,68,2,'/img/books/50.jpg','/books/50.pdf',1),
('9780000000051','Silent Empire','1st','Hidden imperial power','2019-03-01',410,21,42,8,'/img/books/51.jpg','/books/51.pdf',1),
('9780000000052','AI Revolt','1st','Machines fight back','2020-04-11',345,19,38,6,'/img/books/52.jpg','/books/52.pdf',1),
('9780000000053','Missing Signal','2nd','Disappearance mystery','2018-05-21',290,16,32,0,'/img/books/53.jpg','/books/53.pdf',2),
('9780000000054','Hearts United','1st','Unexpected romance','2021-06-14',320,18,36,7,'/img/books/54.jpg','/books/54.pdf',1),
('9780000000055','Dark Presence','1st','Entity returns','2017-07-19',370,17,34,0,'/img/books/55.jpg','/books/55.pdf',2),
('9780000000056','Endless Battle','3rd','War without end','2022-08-08',530,27,54,11,'/img/books/56.jpg','/books/56.pdf',1),
('9780000000057','Shattered Mind','1st','Psychological trauma','2016-09-10',285,15,30,5,'/img/books/57.jpg','/books/57.pdf',1),
('9780000000058','Final Countdown','1st','Time running out','2023-10-02',445,24,48,9,'/img/books/58.jpg','/books/58.pdf',1),
('9780000000059','Digital World','1st','Virtual reality expands','2024-11-15',395,22,44,7,'/img/books/59.jpg','/books/59.pdf',1),
('9780000000060','War Eternal','Collector','Endless war legacy','2015-12-05',650,35,70,3,'/img/books/60.jpg','/books/60.pdf',1),
('9780000000061','Ghost Code','1st','Haunted software','2019-01-18',405,21,42,6,'/img/books/61.jpg','/books/61.pdf',1),
('9780000000062','Neural Link','1st','Human machine merge','2020-02-27',330,18,36,5,'/img/books/62.jpg','/books/62.pdf',1),
('9780000000063','Hidden Enemy','2nd','Enemy in shadows','2018-03-14',300,16,32,0,'/img/books/63.jpg','/books/63.pdf',2),
('9780000000064','Love Beyond','1st','Timeless romance','2021-04-09',315,17,34,6,'/img/books/64.jpg','/books/64.pdf',1),
('9780000000065','Fear Returns','1st','Nightmare reborn','2017-05-17',360,17,34,0,'/img/books/65.jpg','/books/65.pdf',2),
('9780000000066','Legend Rising','3rd','Hero awakens','2022-06-25',545,28,56,12,'/img/books/66.jpg','/books/66.pdf',1),
('9780000000067','Broken Reality','1st','Reality collapses','2016-07-30',280,15,30,4,'/img/books/67.jpg','/books/67.pdf',1),
('9780000000068','Target Locked','1st','Mission critical','2023-08-11',460,25,50,10,'/img/books/68.jpg','/books/68.pdf',1),
('9780000000069','Future Shock','1st','Tech changes humanity','2024-09-19',400,22,44,8,'/img/books/69.jpg','/books/69.pdf',1),
('9780000000070','Empire Fall','Collector','Collapse of dynasty','2015-10-07',660,36,72,2,'/img/books/70.jpg','/books/70.pdf',1),
('9780000000071','Mystic Fire','1st','Ancient flames awaken','2019-02-05',410,21,42,7,'/img/books/71.jpg','/books/71.pdf',1),
('9780000000072','Code Runner','1st','Hacker escape','2020-03-22',340,18,36,6,'/img/books/72.jpg','/books/72.pdf',1),
('9780000000073','Silent Witness','2nd','Only one saw truth','2018-04-10',295,16,32,0,'/img/books/73.jpg','/books/73.pdf',2),
('9780000000074','Endless Love','1st','Love never fades','2021-05-03',310,17,34,5,'/img/books/74.jpg','/books/74.pdf',1),
('9780000000075','Shadow Fear','1st','Fear in darkness','2017-06-12',355,17,34,0,'/img/books/75.jpg','/books/75.pdf',2),
('9780000000076','Dragon Path','3rd','Dragon awakens','2022-07-01',550,29,58,11,'/img/books/76.jpg','/books/76.pdf',1),
('9780000000077','Lost Identity','1st','Who am I?','2016-08-19',275,14,28,3,'/img/books/77.jpg','/books/77.pdf',1),
('9780000000078','Critical Mission','1st','World at stake','2023-09-09',470,25,50,9,'/img/books/78.jpg','/books/78.pdf',1),
('9780000000079','Neon Dreams','1st','City never sleeps','2024-10-28',390,22,44,6,'/img/books/79.jpg','/books/79.pdf',1),
('9780000000080','War Legacy','Collector','Legacy continues','2015-11-16',670,37,74,2,'/img/books/80.jpg','/books/80.pdf',1),
('9780000000081','Crystal Fire','1st','Power unleashed','2019-01-12',420,22,44,7,'/img/books/81.jpg','/books/81.pdf',1),
('9780000000082','Digital War','1st','Cyber battlefield','2020-02-20',335,18,36,5,'/img/books/82.jpg','/books/82.pdf',1),
('9780000000083','Unknown Truth','2nd','Truth uncovered','2018-03-18',305,16,32,0,'/img/books/83.jpg','/books/83.pdf',2),
('9780000000084','Love Eternal','1st','Love forever','2021-04-25',325,18,36,6,'/img/books/84.jpg','/books/84.pdf',1),
('9780000000085','Dark Secret','1st','Secret revealed','2017-05-30',365,17,34,0,'/img/books/85.jpg','/books/85.pdf',2),
('9780000000086','Hero Legacy','3rd','Hero remembered','2022-06-12',560,30,60,10,'/img/books/86.jpg','/books/86.pdf',1),
('9780000000087','Broken World','1st','World shattered','2016-07-21',290,15,30,4,'/img/books/87.jpg','/books/87.pdf',1),
('9780000000088','Final Strike','1st','Last attack','2023-08-27',480,26,52,8,'/img/books/88.jpg','/books/88.pdf',1),
('9780000000089','Future Mind','1st','Mind evolution','2024-09-12',405,22,44,9,'/img/books/89.jpg','/books/89.pdf',1),
('9780000000090','Empire Legacy','Collector','Empire remembered','2015-10-21',680,38,76,3,'/img/books/90.jpg','/books/90.pdf',1),
('9780000000091','Shadow Code','1st','Hidden algorithm','2019-02-14',415,21,42,6,'/img/books/91.jpg','/books/91.pdf',1),
('9780000000092','AI Destiny','1st','AI controls fate','2020-03-03',345,19,38,5,'/img/books/92.jpg','/books/92.pdf',1),
('9780000000093','Lost Evidence','2nd','Evidence missing','2018-04-12',300,16,32,0,'/img/books/93.jpg','/books/93.pdf',2),
('9780000000094','Love Secret','1st','Hidden romance','2021-05-19',320,18,36,7,'/img/books/94.jpg','/books/94.pdf',1),
('9780000000095','Night Shadow','1st','Dark follows you','2017-06-07',370,17,34,0,'/img/books/95.jpg','/books/95.pdf',2),
('9780000000096','Legend Path','3rd','Legend continues','2022-07-15',570,30,60,12,'/img/books/96.jpg','/books/96.pdf',1),
('9780000000097','Silent Memory','1st','Memory fades','2016-08-29',285,15,30,3,'/img/books/97.jpg','/books/97.pdf',1),
('9780000000098','Critical System','1st','System failure','2023-09-18',490,26,52,8,'/img/books/98.jpg','/books/98.pdf',1),
('9780000000099','Future Signal','1st','Signal from future','2024-10-06',395,22,44,7,'/img/books/99.jpg','/books/99.pdf',1),
('9780000000100','Final Empire','Collector','Empire ends','2015-11-29',700,40,80,2,'/img/books/100.jpg','/books/100.pdf',1);

/* Book_Genre */
select * from book_genre;
insert into book_genre (book_id, genre_id) values
(1,7),(1,2),(1,9),(2,4),(2,1),(2,8),(3,6),(3,10),(3,3),(4,5),(4,9),(4,2),
(5,8),(5,4),(5,1),(6,3),(6,7),(6,10),(7,2),(7,6),(7,9),(8,1),(8,5),(8,8),
(9,10),(9,4),(9,7),(10,3),(10,6),(10,1),(11,9),(11,2),(11,5),(12,8),(12,10),(12,4),
(13,1),(13,7),(13,3),(14,6),(14,9),(14,2),(15,4),(15,8),(15,10),(16,5),(16,1),(16,7),
(17,3),(17,6),(17,9),(18,10),(18,2),(18,5),(19,7),(19,4),(19,8),(20,1),(20,3),(20,6),
(21,9),(21,5),(21,2),(22,8),(22,4),(22,10),(23,6),(23,1),(23,7),(24,2),(24,9),(24,3),
(25,4),(25,8),(25,5),(26,10),(26,6),(26,2),(27,1),(27,7),(27,9),(28,3),(28,5),(28,8),
(29,6),(29,4),(29,10),(30,2),(30,1),(30,7),(31,5),(31,9),(31,3),(32,8),(32,6),(32,4),
(33,10),(33,2),(33,1),(34,7),(34,5),(34,9),(35,3),(35,8),(35,6),(36,4),(36,10),(36,2),
(37,9),(37,1),(37,7),(38,5),(38,3),(38,8),(39,6),(39,2),(39,10),(40,4),(40,9),(40,1),
(41,7),(41,5),(41,3),(42,8),(42,10),(42,6),(43,2),(43,4),(43,9),(44,1),(44,7),(44,5),
(45,10),(45,3),(45,8),(46,6),(46,2),(46,4),(47,9),(47,1),(47,7),(48,5),(48,10),(48,3),
(49,8),(49,6),(49,2),(50,4),(50,9),(50,1),(51,7),(51,3),(51,5),(52,10),(52,6),(52,8),
(53,2),(53,4),(53,9),(54,1),(54,7),(54,10),(55,5),(55,3),(55,6),(56,8),(56,2),(56,4),
(57,9),(57,1),(57,7),(58,3),(58,5),(58,10),(59,6),(59,8),(59,2),(60,4),(60,9),(60,1),
(61,7),(61,3),(61,5),(62,10),(62,6),(62,8),(63,2),(63,4),(63,9),(64,1),(64,7),(64,10),
(65,5),(65,3),(65,6),(66,8),(66,2),(66,4),(67,9),(67,1),(67,7),(68,3),(68,5),(68,10),
(69,6),(69,8),(69,2),(70,4),(70,9),(70,1),(71,7),(71,3),(71,5),(72,10),(72,6),(72,8),
(73,2),(73,4),(73,9),(74,1),(74,7),(74,10),(75,5),(75,3),(75,6),(76,8),(76,2),(76,4),
(77,9),(77,1),(77,7),(78,3),(78,5),(78,10),(79,6),(79,8),(79,2),(80,4),(80,9),(80,1),
(81,7),(81,3),(81,5),(82,10),(82,6),(82,8),(83,2),(83,4),(83,9),(84,1),(84,7),(84,10),
(85,5),(85,3),(85,6),(86,8),(86,2),(86,4),(87,9),(87,1),(87,7),(88,3),(88,5),(88,10),
(89,6),(89,8),(89,2),(90,4),(90,9),(90,1),(91,7),(91,3),(91,5),(92,10),(92,6),(92,8),
(93,2),(93,4),(93,9),(94,1),(94,7),(94,10),(95,5),(95,3),(95,6),(96,8),(96,2),(96,4),
(97,9),(97,1),(97,7),(98,3),(98,5),(98,10),(99,6),(99,8),(99,2),(100,4),(100,9),(100,1);

/* Book_Author */
select * from book_author;
insert into book_author (book_id,author_id) values
(1,7),(2,12),(3,3),(4,19),(5,5),(6,14),(7,9),(8,22),(9,1),(10,16),
(11,8),(12,25),(13,4),(14,18),(15,6),(16,11),(17,20),(18,2),(19,15),(20,10),
(21,13),(22,24),(23,17),(24,21),(25,23),(26,7),(27,12),(28,3),(29,19),(30,5),
(31,14),(32,9),(33,22),(34,1),(35,16),(36,8),(37,25),(38,4),(39,18),(40,6),
(41,11),(42,20),(43,2),(44,15),(45,10),(46,13),(47,24),(48,17),(49,21),(50,23),
(51,7),(51,19),(52,12),(52,5),(53,3),(53,14),(54,19),(54,8),(55,5),(55,22),
(56,14),(56,1),(57,9),(57,16),(58,22),(58,11),(59,1),(59,20),(60,16),(60,2),
(61,8),(61,15),(62,25),(62,10),(63,4),(63,13),(64,18),(64,24),(65,6),(65,17),
(66,11),(66,21),(67,20),(67,23),(68,2),(68,7),(69,15),(69,12),(70,10),(70,3),
(71,13),(71,19),(72,24),(72,5),(73,17),(73,14),(74,21),(74,9),(75,23),(75,22),
(76,7),(76,1),(77,12),(77,16),(78,3),(78,11),(79,19),(79,20),(80,5),(80,2),
(81,14),(81,15),(82,9),(82,10),(83,22),(83,13),(84,1),(84,24),(85,16),(85,17),
(86,8),(86,21),(86,4),(87,25),(87,23),(87,18),(88,4),(88,6),(88,7),
(89,18),(89,11),(89,12),(90,6),(90,20),(90,3),(91,11),(91,2),(91,19),
(92,20),(92,15),(92,5),(93,2),(93,10),(93,14),(94,15),(94,13),(94,9),
(95,10),(95,24),(95,22),(96,13),(96,17),(96,1),(97,24),(97,21),(97,16),
(98,17),(98,23),(98,8),(99,21),(99,7),(99,25),(100,23),(100,12),(100,18);

/* Book_Publisher */
select * from book_publisher;
insert into book_publisher (book_id, publisher_id) values
(1,4),(2,9),(3,2),(4,7),(5,1),(6,10),(7,5),(8,3),(9,8),(10,6),
(11,2),(12,5),(13,7),(14,1),(15,9),(16,4),(17,6),(18,10),(19,3),(20,8),
(21,7),(22,1),(23,4),(24,9),(25,2),(26,6),(27,10),(28,5),(29,8),(30,3),
(31,9),(32,2),(33,6),(34,10),(35,1),(36,7),(37,4),(38,8),(39,5),(40,3),
(41,6),(42,10),(43,1),(44,7),(45,9),(46,2),(47,8),(48,4),(49,3),(50,5),
(51,10),(52,6),(53,2),(54,8),(55,4),(56,9),(57,1),(58,7),(59,3),(60,5),
(61,8),(62,4),(63,10),(64,6),(65,2),(66,9),(67,7),(68,3),(69,5),(70,1),
(71,4),(72,8),(73,6),(74,2),(75,10),(76,3),(77,9),(78,5),(79,1),(80,7),
(81,2),(82,6),(83,4),(84,10),(85,8),(86,5),(87,3),(88,9),(89,7),(90,1),
(91,6),(92,4),(93,8),(94,2),(95,10),(96,7),(97,5),(98,1),(99,3),(100,9);

/* Promotion */
select * from promotion;
insert into promotion (name,discount_percent,start_date,end_date,status_id) values
('Summer Sale',10,'2025-01-01','2025-03-31',1), ('Winter Sale',15,'2025-06-01','2025-08-31',1),
('Black Friday',40,'2025-11-25','2025-11-30',1), ('Cyber Monday',35,'2025-12-01','2025-12-02',1),
('New Year',20,'2026-01-01','2026-01-10',1), ('Flash Sale',25,'2025-04-10','2025-04-12',1),
('Weekend Sale',12,'2025-05-03','2025-05-05',1), ('Special Event',18,'2025-07-15','2025-07-20',1),
('Clearance',50,'2025-09-01','2025-09-30',1), ('Anniversary',30,'2025-10-10','2025-10-15',1);

/* Book_Promotion */
select * from book_promotion;
insert into book_promotion (book_id, promotion_id) values
(3,1),(7,4),(12,8),(18,9),(21,1),(25,4),(29,8),(34,9),(38,1),(42,4),
(47,8),(51,9),(56,1),(60,4),(64,8),(69,9),(73,1),(78,4),(82,8),(87,9),
(91,1),(95,4),(100,8),(2,9),(6,1),(11,4),(15,8),(19,9),(24,1),(28,4),
(33,8),(37,9),(41,1),(46,4),(50,8),(54,9),(59,1),(63,4),(68,8),(72,9),
(77,1),(81,4),(86,8),(90,9),(94,1),(99,4),(5,8),(14,9),(31,1),(66,4);

/* Users */
select * from user_account;
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
insert into user_library (added_date,current_page,user_id,book_id,status_id) values
('2026-01-05',0,1,12,9),('2026-01-06',145,1,27,10),('2026-01-07',320,1,34,11),('2026-01-08',78,1,5,10),('2026-01-09',0,1,89,9),('2026-01-10',410,1,63,11),
('2026-01-05',0,2,44,9),('2026-01-06',210,2,18,10),('2026-01-07',380,2,72,11),('2026-01-08',95,2,9,10),('2026-01-09',0,2,51,9),('2026-01-10',290,2,26,11),
('2026-01-05',33,3,39,10),('2026-01-06',0,3,7,9),('2026-01-07',415,3,81,11),('2026-01-08',120,3,14,10),('2026-01-09',0,3,60,9),('2026-01-10',350,3,22,11),
('2026-01-05',0,4,50,9),('2026-01-06',188,4,3,10),('2026-01-07',275,4,47,11),('2026-01-08',66,4,91,10),('2026-01-09',0,4,36,9),('2026-01-10',402,4,74,11),
('2026-01-05',142,5,21,10),('2026-01-06',0,5,33,9),('2026-01-07',390,5,55,11),('2026-01-08',57,5,8,10),('2026-01-09',0,5,99,9),('2026-01-10',315,5,41,11),
('2026-01-05',0,6,46,9),('2026-01-06',201,6,2,10),('2026-01-07',430,6,68,11),('2026-01-08',88,6,25,10),('2026-01-09',0,6,79,9),('2026-01-10',360,6,16,11),
('2026-01-05',76,7,28,10),('2026-01-06',0,7,42,9),('2026-01-07',295,7,64,11),('2026-01-08',134,7,11,10),('2026-01-09',0,7,87,9),('2026-01-10',405,7,53,11),
('2026-01-05',0,8,41,9),('2026-01-06',167,8,6,10),('2026-01-07',320,8,97,11),('2026-01-08',49,8,19,10),('2026-01-09',0,8,70,9),('2026-01-10',385,8,30,11),
('2026-01-05',92,9,35,10),('2026-01-06',0,9,48,9),('2026-01-07',440,9,84,11),('2026-01-08',158,9,24,10),('2026-01-09',0,9,65,9),('2026-01-10',300,9,13,11),
('2026-01-05',0,10,8,9),('2026-01-06',175,10,52,10),('2026-01-07',410,10,90,11),('2026-01-08',61,10,37,10),('2026-01-09',0,10,100,9),('2026-01-10',355,10,45,11);

/* Wishlist */
select * from whishlist;
insert into whishlist (user_id, book_id) values
(1,4),(1,11),(1,19),(1,26),(1,33),(1,47),(1,52),(1,68),(1,74),(1,81),(1,9),(1,95),(1,38),(1,57),(1,100),
(2,7),(2,15),(2,22),(2,39),(2,44),(2,58),(2,63),(2,79),(2,84),(2,91),(2,3),(2,97),(2,50),(2,30),(2,66),
(3,2),(3,18),(3,25),(3,31),(3,48),(3,53),(3,69),(3,75),(3,88),(3,94),(3,10),(3,60),(3,42),(3,82),(3,99),
(4,6),(4,13),(4,21),(4,37),(4,46),(4,59),(4,64),(4,78),(4,83),(4,90),(4,1),(4,96),(4,54),(4,72),(4,34),
(5,5),(5,17),(5,28),(5,35),(5,49),(5,61),(5,76),(5,80),(5,93),(5,98),(5,8),(5,41),(5,56),(5,70),(5,85),
(6,12),(6,20),(6,29),(6,43),(6,51),(6,65),(6,71),(6,87),(6,92),(6,100),(6,14),(6,36),(6,58),(6,77),(6,96),
(7,3),(7,16),(7,24),(7,32),(7,45),(7,55),(7,67),(7,73),(7,86),(7,91),(7,6),(7,40),(7,62),(7,84),(7,97),
(8,1),(8,9),(8,27),(8,38),(8,52),(8,60),(8,74),(8,81),(8,95),(8,99),(8,18),(8,33),(8,47),(8,68),(8,88),
(9,8),(9,23),(9,34),(9,41),(9,57),(9,66),(9,79),(9,85),(9,94),(9,100),(9,11),(9,26),(9,48),(9,63),(9,90),
(10,2),(10,14),(10,30),(10,36),(10,54),(10,61),(10,72),(10,82),(10,96),(10,98),(10,5),(10,21),(10,43),(10,75),(10,87);

/* Review */
select * from review;
insert into review (rating,comment,user_id,book_id) values
(5,'Amazing story and characters',1,4),(4,'Really enjoyable read',2,15),(3,'It was decent overall',3,22),(5,'Absolutely loved it',4,39),(2,'Not what I expected',5,44),
(4,'Great pacing and plot',6,58),(5,'One of my favorites',7,63),(3,'Average but fine',8,79),(4,'Kept me interested',9,84),(5,'Fantastic ending',10,91),
(1,'Did not like it',1,7),(4,'Very well written',2,18),(5,'Highly recommended',3,25),(3,'Some boring parts',4,31),(4,'Good character development',5,48),
(5,'Excellent book',6,53),(2,'Could be better',7,69),(4,'Nice and entertaining',8,75),(5,'Loved every page',9,88),(3,'Nothing special',10,94),
(4,'Pretty good overall',1,2),(5,'Masterpiece',2,13),(3,'Okay read',3,21),(4,'Enjoyed the journey',4,37),(5,'Very immersive',5,46),
(2,'Not engaging enough',6,59),(4,'Solid book',7,64),(5,'Exceeded expectations',8,78),(3,'Mixed feelings',9,83),(4,'Fun to read',10,90),
(5,'Incredible writing',1,1),(3,'Just average',2,96),(4,'Worth reading',3,54),(5,'Loved the characters',4,72),(2,'Boring at times',5,34),
(4,'Very creative',6,5),(5,'Outstanding',7,17),(3,'It was fine',8,28),(4,'Good experience',9,35),(5,'Amazing concept',10,49),
(4,'Really liked it',1,61),(5,'Brilliant',2,76),(3,'Not bad',3,80),(4,'Interesting plot',4,93),(5,'Excellent pacing',5,98),
(2,'Too slow for me',6,12),(4,'Nice storytelling',7,20),(5,'Loved it a lot',8,29),(3,'Average story',9,43),(4,'Enjoyable overall',10,51);

/* Collaboration */
select * from collaboration;
insert into collaboration (collaboration_date,type,user_id,status_id) values
('2025-01-01','Translation',1,6),('2025-01-02','Donation',2,7),('2025-01-03','Translation',3,8),('2025-01-04','Donation',4,6),('2025-01-05','Translation',5,7),
('2025-01-06','Donation',6,8),('2025-01-07','Translation',7,6),('2025-01-08','Donation',8,7),('2025-01-09','Translation',9,8),('2025-01-10','Donation',10,7);

/* Card */
select * from card;
insert into card (number,cardholder,expiration_date,cvv,user_id) values
('4111111111111111','João Silva','2028-01-01','123',1),('4111111111111112','Maria Souza','2028-02-01','124',2),
('4111111111111113','Carlos Lima','2028-03-01','125',3),('4111111111111114','Ana Costa','2028-04-01','126',4),
('4111111111111115','Pedro Rocha','2028-05-01','127',5),('4111111111111116','Julia Alves','2028-06-01','128',6),
('4111111111111117','Lucas Pinto','2028-07-01','129',7),('4111111111111118','Fernanda Dias','2028-08-01','130',8),
('4111111111111119','Rafael Teixeira','2028-09-01','131',9),('4111111111111120','Patricia Melo','2028-10-01','132',10);

/* Bankslip */
select * from bankslip;
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
insert into pix (payment_date,pix_key,status_id) values
('2025-01-01','nofunwuipbiybwONETBNE',13),('2025-01-02','pqlksdnfhytrgfhjdiwuyhdjsio',13),('2025-01-03','umjihyutrfdcfvgbhnm',12),
('2025-01-04','boinrauoernabuonu9g',14),('2025-01-05','lkjniuhbgfcdesdxcfghjkl',13),('2025-01-06','mkibrszhctesrcvkyrsdesrgcghvjhbljnop',12),
('2025-01-07','ovningurebnuinubne',13),('2025-01-08','ceibeiybvywpbrvyw8getyvvqc',13),('2025-01-09','moihiygtftyedsrewzcyvu',14),
('2025-01-10','aeiubnviabeprbvpbBR',13);

/* Payment Method */
select * from payment_method;
insert into payment_method (payment_type) values
('Pix'),('Card'),('Bankslip'),('Card'),('Pix'),
('Card'),('Bankslip'),('Pix'),('Card'),('Card'),
('Bankslip'),('Pix'),('Card'),('Pix'),('Bankslip'),
('Card'),('Pix'),('Bankslip'),('Card'),('Pix'),
('Card'),('Bankslip'),('Pix'),('Card'),('Bankslip'),
('Pix'),('Card'),('Bankslip'),('Pix'),('Card');


/* Payment Card */
select * from payment_card;
insert into payment_card (payment_method_id, card_id) values
(2,7),(4,2),(6,10),(9,1),(10,5),
(13,3),(16,8),(19,4),(24,9),(30,6);

/* Payment Bankslip */
select * from payment_bankslip;
insert into payment_bankslip (payment_method_id, bankslip_id) values
(3,4),(7,1),(11,7),(15,2),(18,9),
(22,5),(25,3),(28,8),(29,6),(21,10);

/* Payment Pix */
select * from payment_pix;
insert into payment_pix (payment_method_id, pix_id) values
(1,6),(5,2),(8,9),(12,1),(14,7),
(17,3),(20,10),(23,5),(26,4),(27,8);

/* Sale */
select * from sale;
insert into sale (sale_date,total_amount,status_id,user_id,payment_method_id) values
('2025-02-01',84,16,3,14),
('2025-02-02',112,16,7,2),
('2025-02-03',30,15,1,25),
('2025-02-04',128,16,9,6),
('2025-02-05',64,17,5,18),
('2025-02-06',150,16,2,9),
('2025-02-07',56,15,8,21),
('2025-02-08',90,16,4,5),
('2025-02-09',42,16,6,27),
('2025-02-10',180,16,10,13);


/* Sale Item */
select * from sale_item;
insert into sale_item (quantity,unit_price,book_id,sale_id) values
(1,40,12,1), (1,44,87,1),
(1,36,3,2), (1,42,55,2), (1,34,91,2), (1,30,24,3), (1,64,100,4),
(1,32,41,4), (1,32,73,4), (1,32,5,5), (1,32,62,5), (1,50,6,6),
(1,46,88,6), (1,54,29,6), (1,28,7,7), (1,28,44,7), (1,44,8,8),
(1,46,95,8), (1,42,9,9), (1,60,10,10), (1,54,77,10), (1,66,35,10);

/* Department */
select * from department;
insert into department (name) values
('Administration'),('Sales'),('IT'),('HR'),('Finance'),
('Support'),('Logistics'),('Marketing'),('Legal'),('Operations'),
('Procurement'), ('Quality Assurance'), ('Business Intelligence'),
('Customer Success'), ('Security'), ('Research'),
('Security'), ('Customer Success'), ('Business Intelligence'), ('Quality Assurance'), ('Product Management'),
('Data Science'), ('Procurement'), ('Public Relations'), ('Training');

/* Job Position */
select * from job_position;
insert into job_position (name,level,base_salary,department_id) values
('Assistant','Junior',2000,1),('Seller','Junior',2200,2),('Developer','Full',5000,3),('HR Analyst','Full',4000,4),('Accountant','Full',4500,5),
('Support Tech','Junior',2500,6),('Coordinator','Senior',6000,7),('Manager','Senior',8000,8),('Lawyer','Senior',7000,9),('Director','Senior',12000,10), ('Procurement Analyst','Full',4200,11),
('Procurement Manager','Senior',7500,11), ('QA Analyst','Junior',2800,12), ('QA Engineer','Full',4800,12),
('BI Analyst','Full',5200,13), ('BI Manager','Senior',8500,13), ('Customer Success Agent','Junior',2600,14),
('Customer Success Manager','Senior',7800,14), ('Security Analyst','Full',5000,15), ('Security Manager','Senior',9000,15);

/* Employee */
select * from employee;
insert into employee (full_name,cpf,rg,birth_date,gender,email,phone,address,adress_number,address_complement,district,city,state,cep,salary,hire_date,termination_date,job_position_id,department_id,status_id) values
('Lucas Martins','12121212121','RG11','1992-02-11','M','lucas.martins@email.com','11900000011','Street K','110','Apt 11','Moema','São Paulo','SP','01000010',4200,'2021-01-15',NULL,11,11,18),
('Fernanda Alves','13131313131','RG12','1993-03-12','F','fernanda.alves@email.com','11900000012','Street L','120','Apt 12','Moema','São Paulo','SP','01000011',7500,'2020-11-20',NULL,12,11,18),
('Bruno Rocha','14141414141','RG13','1994-04-13','M','bruno.rocha@email.com','11900000013','Street M','130','Apt 13','Pinheiros','São Paulo','SP','01000012',2800,'2022-02-01',NULL,13,12,18),
('Camila Freitas','15151515151','RG14','1995-05-14','F','camila.freitas@email.com','11900000014','Street N','140','Apt 14','Pinheiros','São Paulo','SP','01000013',4800,'2021-06-10',NULL,14,12,18),
('Rafael Costa','16161616161','RG15','1991-06-15','M','rafael.costa@email.com','11900000015','Street O','150','Apt 15','Vila Mariana','São Paulo','SP','01000014',5200,'2020-09-05',NULL,15,13,18),
('Juliana Ribeiro','17171717171','RG16','1990-07-16','F','juliana.ribeiro@email.com','11900000016','Street P','160','Apt 16','Vila Mariana','São Paulo','SP','01000015',8500,'2019-03-18',NULL,16,13,18),
('Diego Carvalho','18181818181','RG17','1996-08-17','M','diego.carvalho@email.com','11900000017','Street Q','170','Apt 17','Itaim','São Paulo','SP','01000016',2600,'2023-01-09',NULL,17,14,18),
('Patricia Gomes','19191919191','RG18','1992-09-18','F','patricia.gomes@email.com','11900000018','Street R','180','Apt 18','Itaim','São Paulo','SP','01000017',7800,'2020-12-01',NULL,18,14,18),
('André Fernandes','21212121212','RG19','1989-10-19','M','andre.fernandes@email.com','11900000019','Street S','190','Apt 19','Brooklin','São Paulo','SP','01000018',5000,'2021-04-22',NULL,19,15,18),
('Beatriz Lopes','23232323232','RG20','1993-11-20','F','beatriz.lopes@email.com','11900000020','Street T','200','Apt 20','Brooklin','São Paulo','SP','01000019',9000,'2018-08-14',NULL,20,15,18),
('Carlos Eduardo','24242424242','RG21','1990-01-21','M','carlos.edu@email.com','11900000021','Street U','210','Apt 21','Centro','São Paulo','SP','01000020',5000,'2022-05-10',NULL,3,3,18),
('Amanda Silva','25252525252','RG22','1994-02-22','F','amanda.silva@email.com','11900000022','Street V','220','Apt 22','Centro','São Paulo','SP','01000021',4000,'2021-07-19',NULL,4,4,18),
('Thiago Souza','26262626262','RG23','1991-03-23','M','thiago.souza@email.com','11900000023','Street W','230','Apt 23','Centro','São Paulo','SP','01000022',6000,'2020-03-01',NULL,7,7,18),
('Larissa Moura','27272727272','RG24','1995-04-24','F','larissa.moura@email.com','11900000024','Street X','240','Apt 24','Centro','São Paulo','SP','01000023',2200,'2023-02-10',NULL,2,2,18),
('Marcos Lima','28282828282','RG25','1992-05-25','M','marcos.lima@email.com','11900000025','Street Y','250','Apt 25','Centro','São Paulo','SP','01000024',2500,'2022-09-14',NULL,6,6,18),
('Vanessa Duarte','29292929292','RG26','1996-06-26','F','vanessa.duarte@email.com','11900000026','Street Z','260','Apt 26','Centro','São Paulo','SP','01000025',8000,'2020-01-11',NULL,8,8,18),
('Felipe Barros','30303030304','RG27','1988-07-27','M','felipe.barros@email.com','11900000027','Street AA','270','Apt 27','Centro','São Paulo','SP','01000026',7000,'2019-11-11',NULL,9,9,18),
('Renata Campos','31313131314','RG28','1993-08-28','F','renata.campos@email.com','11900000028','Street AB','280','Apt 28','Centro','São Paulo','SP','01000027',12000,'2017-06-01',NULL,10,10,18),
('Gabriel Pinto','32323232324','RG29','1997-09-29','M','gabriel.pinto@email.com','11900000029','Street AC','290','Apt 29','Centro','São Paulo','SP','01000028',2800,'2024-01-08',NULL,13,12,18),
('Isabela Teixeira','33333333334','RG30','1998-10-30','F','isabela.teixeira@email.com','11900000030','Street AD','300','Apt 30','Centro','São Paulo','SP','01000029',2600,'2024-03-12',NULL,17,14,18);

/* To erase all data:
use master
drop database Lectio_V2;
create all database again with create_lectio_v2.sql
*/
