--creating tables
-- Column: public.author."ID"
CREATE TABLE Public.Author (
	book varchar NOT NULL,
	name varchar (255) NOT NULL,
	email_address varchar (255) NOT NULL UNIQUE,
	author_contact bigint NOT NULL UNIQUE ,
	bio varchar (255) NOT NULL,
	company varchar NOT NULL
	)

-- librarians table
CREATE TABLE Public.Librarians (
	name varchar NOT NULL,
	email_address varchar UNIQUE,
	contact integer UNIQUE,
	shift varchar
	)
	
-- Books table
CREATE TABLE Public.Books (
	title varchar NOT NULL UNIQUE,
	price integer NOT NULL,
	description varchar NOT NULL,
	publish_date date NOT NULL,
	publish_year date NOT NULL,
	"ISBN_no" bigint NOT NULL,
	author varchar NOT NULL

)
Students table
CREATE TABLE Public.Students(
	name varchar NOT NULL,
	contact integer UNIQUE,
	address varchar,
	date_of_Borrowing date,
	date_of_return Date
)

--inserting data into tables
INSERT INTO public."author"("book", "name","email_address","bio","author_contact","company")
VALUES ('Oliver Twist','Allan Walker','allanwalker@gmail.com','married','0781344621','Penguins publishers'),
       ('Song of Lawino','Okot Bitek','okotbitek@gmail.com','single','0706992131','new vision ltd'),
	   ('Rhymes and rythms','Reenah Martins','reenahmartins@gmail.com','having fun','0781334427','rector limited'),
	   ('Adventures of Tom sawyer','John Miller','johnmiller@gmail.com','enjoying life','0701224821','new publishers co'),
	   ('African child','Ngugi Thiongo','ngugithiongo@gmail.com','inspiring','0781382122','kenya writers ltd');
	   
INSERT INTO public."librarians"("name","email_address","contact","shift")
VALUES ('Nkiru Patience','kirupatie@gmail.com','+206212230','morning'),
       ('Peela Rita','larita@gmail.com','+281338807','evening'),
	   ('Kara Breenah','karabreenah@gmail.com','+201228876','morning'),
	   ('Lere Daniel','daniellere@gmail.com','+288229041','evening'),
	   ('Ocaa Sylvia','sylviaocaaa@gmail.com','+206212100','morning');
INSERT INTO PUBLIC."books"("title","price","description","publish_date","publish_year","ISBN_no","author")
VALUES ('Oliver Twist','20000','inspiring','18/11/1999','18/11/1999','148410','Okot Bitek'),
       ('Song of Lawino','25000','traditional','20/5/2000','20/5/2000','155211','Allan Walker'),
	   ('Ryhmes and rythms','30000','exciting','21/5/1998','21/5/1998','115231','Reenah Martins'),
	   ('Tom Sawyer','15000','interesting','18/6/1991','18/6/1991','521134','Miller John'),
	   ('African Child','20000','imaginative','10/5/1999','10/5/1999','148410','Okot Bitek');
	   
INSERT INTO public."students"("name","contact","address","date_of_borrowing","date_of_return")
VALUES ('Kisa Bren','+381342478','Bukoto','1/11/22','5/11/22'),
       ('Jay Bello','+306116654','Kyebando','1/11/22','7/11/22'),
	   ('Rayan koffee','+389212247','Nakawa','2/11/22','9/11/22'),
	   ('Bera Kayen','012298317','Kisaasi','2/11/22','10/11/22'),
	   ('Ruth kora','+381223042','kamwokya','3/11/22','6/11/22');
	   
--Select statements
--selecting all authors from the database
SELECT name FROM "author";

--selecting all librarians who work morning shift
SELECT name FROM "librarians" WHERE shift='morning';

--selecting all authors with their company name
SELECT name,company FROM "author";

