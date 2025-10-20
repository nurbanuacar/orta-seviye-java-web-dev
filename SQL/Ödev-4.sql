--1.Soru : film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.
select distinct replacement_cost from public.film;

--2.Soru : film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
select count(distinct replacement_cost) from public.film; --21 farklı ürün bulunmaktadır.

--3.Soru : film tablosunda bulunan film isimlerinde (title) kaç tanesini 
--T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
select count(1) from public.film where title like 'T%' and rating = 'G';

--4.Soru : country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
select count(1) from public.country 
where country like '_____';

--5.Soru : city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?
select count(1) from public.city 
where city ilike '%R';