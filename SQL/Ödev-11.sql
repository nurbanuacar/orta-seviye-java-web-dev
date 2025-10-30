--1.Soru : actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
select first_name from actor
union 
select first_name from customer;

--2.Soru : actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
select first_name from actor
intersect 
select first_name from customer;

--3. Soru : actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan 
--ancak ikinci tabloda bulunmayan verileri sıralayalım.
select first_name from actor
except 
select first_name from customer;

--4. Soru : 
select first_name from actor
union all
select first_name from customer;

select first_name from actor
intersect all
select first_name from customer;

select first_name from actor
except all
select first_name from customer;