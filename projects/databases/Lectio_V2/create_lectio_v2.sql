create database Lectio_V2;
use Lectio_V2;

/*
To do:
-Replace ENUMs with CHECK constraints
-Add indexes on foreign keys
*/

create table status (
    status_id int primary key identity(1, 1),
    name nvarchar(50) not null,
    category nvarchar(50) not null,
    description nvarchar(255) null,
    constraint u_status unique (name, category)
);

create table book (
	book_id int primary key identity(1, 1),
	isbn char(13) not null unique,
	title nvarchar(150) not null,
	edition varchar(20) not null,
	description nvarchar(1000),
	release_date date not null,
	page_count int not null,
	purchase_price decimal(10, 2) not null default 0,
	sale_price decimal(10, 2) not null default 0,
	stock int not null default 0,
	image_path nvarchar(255) null,
	book_path nvarchar(255) null,
	status_id int not null, --In Stock or Out of Stock
	constraint fk_book_statusid 
		foreign key (status_id) references status(status_id)
);

create table genre (
	genre_id int primary key identity(1, 1),
	name nvarchar(150) not null,
	image_path nvarchar(255) null,
	description nvarchar(1000) null
);

create table book_genre (
	book_genre_id int primary key identity(1, 1),
	book_id int not null,
	genre_id int not null,
	constraint fk_bookgenre_bookid 
		foreign key (book_id) references book(book_id),
	constraint fk_bookgenre_genreid 
		foreign key (genre_id) references genre(genre_id),
	constraint u_bookgenre unique (book_id, genre_id)
);

create table author (
	author_id int primary key identity(1, 1),
	name nvarchar(150) not null,
	image_path nvarchar(255) null,
	description nvarchar(1000) null
);

create table book_author (
	book_author_id int primary key identity(1, 1),
	book_id int not null,
	author_id int not null,
	constraint fk_bookauthor_bookid
		foreign key (book_id) references book(book_id),
	constraint fk_bookauthor_authorid 
		foreign key (author_id) references author(author_id),
	constraint u_bookauthor unique (book_id, author_id)
);

create table publisher (
	publisher_id int primary key identity(1, 1),
	name nvarchar(150) not null,
	address nvarchar(255) not null,
	phone varchar(20) not null unique,
	email nvarchar(255) not null unique,
	cnpj char(14) not null unique
);

create table book_publisher (
	book_publisher_id int primary key identity(1, 1),
	book_id int not null,
	publisher_id int not null,
	constraint fk_bookpublisher_bookid 
		foreign key (book_id) references book(book_id),
	constraint fk_bookpublisher_publisherid 
		foreign key (publisher_id) references publisher(publisher_id),
	constraint u_bookpublisher unique (book_id, publisher_id)
);

create table promotion (
	promotion_id int primary key identity(1, 1),
	discount_percent decimal(3, 2), 
	start_date datetime not null,
	end_date datetime not null,
	status_id int not null, --Not started, In Progress or Completed
	constraint fk_promotion_statusid
		foreign key (status_id) references status(status_id)
);

create table book_promotion (
	book_promotion_id int primary key identity(1, 1),
	book_id int not null,
	promotion_id int not null,
	constraint fk_bookpromotion_bookid 
		foreign key (book_id) references book(book_id),
	constraint fk_bookpromotion_promotionid 
		foreign key (promotion_id) references promotion(promotion_id),
	constraint u_bookpromotion unique (book_id, promotion_id)
);

create table user_account (
	user_id int primary key identity(1, 1),
	name nvarchar(150) not null,
	birth_date date not null,
	gender char(1) not null,
	cpf char(11) unique not null,
	email nvarchar(255) unique not null,
	phone nvarchar(20) unique not null,
	password_hash nvarchar(255) not null
);

create table collaboration (
	collaboration_id int primary key identity(1, 1),
	collaboration_date datetime not null,
	type nvarchar(20) not null, --Translation or Donation
	user_id int not null,
	status_id int not null, --Not Started, In Progress, Completed
	constraint fk_collaboration_userid 
		foreign key (user_id) references user_account(user_id),
	constraint fk_collaboration_statusid
		foreign key (status_id) references status(status_id)
);

create table user_library (
	user_library_id int primary key identity(1, 1),
	added_date date not null,
	current_page int not null,
	user_id int not null,
	book_id int not null,
	status_id int not null, --Not Open, Reading or Read
	constraint fk_userlibrary_userid 
		foreign key (user_id) references user_account(user_id),
	constraint fk_userlibrary_bookid 
		foreign key (book_id) references book(book_id),
	constraint fk_userlibrary_statusid
		foreign key (status_id) references status(status_id),
	constraint u_userlibrary unique (user_id, book_id)
);

create table whishlist (
	wishlist_id int primary key identity(1, 1),
	user_id int not null,
	book_id int not null,
	constraint fk_wishlist_userid 
		foreign key (user_id) references user_account(user_id),
	constraint fk_wishlist_bookid 
		foreign key (book_id) references book(book_id),
	constraint u_wishlist unique (user_id, book_id)
);

create table review (
	review_id int primary key identity(1, 1),
	rating int not null,
	comment nvarchar(1000) null,
	user_id int not null,
	book_id int not null,
	constraint fk_review_userid 
		foreign key (user_id) references user_account(user_id),
	constraint fk_review_bookid 
		foreign key (book_id) references book(book_id),
	constraint u_review unique (user_id, book_id)
);

create table card (
	card_id int primary key identity(1, 1),
	number char(16) not null,
	cardholder nvarchar(150) not null,
	expiration_date date not null,
	cvv nvarchar(3) not null,
	user_id int not null,
	constraint fk_card_userid 
		foreign key (user_id) references user_account(user_id)
);

create table bankslip (
	bankslip_id int primary key identity(1, 1),
	issue_date date not null,
	expiration_date date not null,
	number char(47) not null,
	status_id int not null --Pending, Paid or Not Paid
	constraint fk_bankslip_statusid
		foreign key (status_id) references status(status_id)
);

create table pix (
	pix_id int primary key identity(1, 1),
	payment_date datetime not null,
	pix_key nvarchar(255) not null,
	status_id int not null --Pendind, Paid or Not Paid
	constraint fk_pix_statusid
		foreign key (status_id) references status(status_id)
);

create table payment_method (
	payment_method_id int primary key identity(1, 1),
	payment_type nvarchar(10) not null, --Card, Bankslip or Pix
);

create table payment_card (
	payment_card_id int primary key identity(1, 1),
	payment_method_id int not null unique,
	card_id int not null,
	constraint fk_paymentcard_paymentmethodid 
		foreign key (payment_method_id) references payment_method(payment_method_id),
	constraint fk_paymentcard_cardid 
		foreign key (card_id) references card(card_id)
);

create table payment_bankslip (
	payment_bankslip_id int primary key identity(1, 1),
	payment_method_id int not null unique,
	bankslip_id int not null,
	constraint fk_paymentbankslip_paymentmethodid 
		foreign key (payment_method_id) references payment_method(payment_method_id),
	constraint fk_paymentbankslip_bankslipid 
		foreign key (bankslip_id) references bankslip(bankslip_id)
);

create table payment_pix (
	payment_pix_id int primary key identity(1, 1),
	payment_method_id int not null unique,
	pix_id int not null,
	constraint fk_paymentpix_paymentmethodid 
		foreign key (payment_method_id) references payment_method(payment_method_id),
	constraint fk_paymentpix_pixid 
		foreign key (pix_id) references pix(pix_id)
);

create table sale (
	sale_id int primary key identity(1, 1),
	sale_date datetime not null,
	total_amount decimal(10, 2) not null default 0,
	status_id int not null, --Pending, Completed, Cancelled
	user_id int not null,
	payment_method_id	int not null unique,
	constraint fk_sale_userid 
		foreign key (user_id) references user_account(user_id),
	constraint fk_sale_paymentmethodid 
		foreign key (payment_method_id) references payment_method(payment_method_id),
	constraint fk_sale_statusid
		foreign key (status_id) references status(status_id)
);

create table sale_item (
	sale_item_id int primary key identity(1, 1),
	quantity int not null,
	unit_price decimal (10, 2) not null default 0, --Preço base e Promoção
	book_id int not null,
	sale_id int not null,
	constraint fk_saleitem_bookid 
		foreign key (book_id) references book(book_id),
	constraint fk_saleitem_saleid  
		foreign key (sale_id) references sale(sale_id),
	constraint u_saleitem unique (book_id, sale_id)
);

create table department (
	department_id int primary key identity(1, 1),
	name nvarchar(150) not null,
);

create table job_position(
	job_position_id int primary key identity(1, 1),
	name nvarchar(150) not null,
	level nvarchar(20) not null, --ENUM('Júnior', 'Pleno', 'Sênior')
	base_salary decimal(10, 2) not null default 0,
	department_id int not null,
	constraint fk_jobposition_setorid foreign key (department_id) references department(department_id) 
);

create table employee (
	employee_id int primary key identity(1, 1),
	full_name nvarchar(150) not null,
	cpf nvarchar(11) not null unique,
	rg nvarchar(20) not null unique,
	birth_date date not null,
	gender char(1) not null,
	email nvarchar(155) not null unique,
	phone nvarchar(20) not null unique,
	address nvarchar(255) not null,
	adress_number nvarchar(10) not null,
	address_complement nvarchar(50) not null,
	district nvarchar(100) not null,
	city nvarchar(100) not null,
	state char(2) not null,
	cep char(8) not null,
	salary decimal(10, 2) not null default 0,
	hire_date date not null,
	termination_date date,
	job_position_id int not null,
	department_id int not null,
	status_id int not null, --Active or Inactive
	constraint fk_employee_jobpositionid 
		foreign key (job_position_id) references job_position(job_position_id),
	constraint fk_employee_departmentid 
		foreign key (department_id) references department(department_id),
	constraint fk_employee_statusid
		foreign key (status_id) references status(status_id)
);