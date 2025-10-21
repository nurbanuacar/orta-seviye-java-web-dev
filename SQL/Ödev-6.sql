--1.Soru : film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
select avg(rental_rate) from public.film; --2.98'dir.

--2.Soru : film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
select count(1) from public.film 
where title like 'C%'; --92 adet.

--3.Soru : film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan 
--en uzun (length) film kaç dakikadır? 
select max(length) from public.film 
where rental_rate = 0.99 --184 dakikadır.

--4.Soru : film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına 
--ait kaç farklı replacement_cost değeri vardır?
select count(distinct(replacement_cost)) from public.film 
where length > 150 --21 adet.