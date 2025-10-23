--1.Soru : test veritabanınızda employee isimli sütun bilgileri 
--id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
create table employee (
	id INT,
	name VARCHAR(50),
	birthday DATE,
	email VARCHAR(100)
);

--3.Soru : Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
update employee 
set name = 'Vecihi Hürkuş', 
	birthday = '10-24-1896', 
	email = 'hurkus@mail.com' 
where id = 1

update employee 
set id = 51,
	birthday = '01-16-1973',
	email = 'norine@book.com'
where name = 'Norine Gier';

update employee 
set id = 52,
	name = 'Ayşe Türk',
	email = 'ayseturk@mailchimp.com'
where birthday = '1993-10-17';

update employee 
set id = 53,
	name = 'Kemal Yeni',
	birthday = '1998-11-02'
where email = 'ggaley7@indiegogo.com'; 

update employee 
set name = 'Berat Yurt', 
	birthday = '10-12-1989', 
	email = 'beratyurt@mail.com' 
where id = 3;

--4.Soru : Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
delete from employee 
where id = 1;

delete from employee 
where name = 'Norine Gier';

delete from employee 
where birthday = '1993-10-17';

delete from employee 
where email = 'ggaley7@indiegogo.com';

delete from employee 
where id = 3;