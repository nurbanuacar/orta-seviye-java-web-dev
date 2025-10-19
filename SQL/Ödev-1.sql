--1.Soru : film tablosunda bulunan title ve description sütunlarındaki verileri sıralayınız.
select title, description  from public.film

--2.Soru : film tablosunda bulunan tüm sütunlardaki verileri 
--film uzunluğu (length) 60 dan büyük VE 75 ten küçük olma koşullarıyla sıralayınız.
select * from public.film 
where length > 60 and length < 75

--3.Soru : film tablosunda bulunan tüm sütunlardaki verileri 
--rental_rate 0.99 VE replacement_cost 12.99 VEYA 28.99 olma koşullarıyla sıralayınız.
select * from public.film 
where rental_rate = 0.99 and (replacement_cost = 12.99 or replacement_cost = 28.99)

--4.Soru : customer tablosunda bulunan first_name sütunundaki değeri 'Mary' olan müşterinin 
--last_name sütunundaki değeri nedir?
select last_name from public.customer where first_name = 'Mary' --Smith

--5.Soru : film tablosundaki uzunluğu(length) 50 ten büyük OLMAYIP aynı zamanda 
--rental_rate değeri 2.99 veya 4.99 OLMAYAN verileri sıralayınız.
select * from public.film 
where length < 50 and not(rental_rate = 2.99 or rental_rate = 4.99)