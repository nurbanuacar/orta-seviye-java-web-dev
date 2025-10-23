--1.Soru : film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
select rating 
from public.film 
group by rating

--2.Soru : film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda 
--film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
select replacement_cost , count(1) 
from public.film 
group by replacement_cost 
having count(*) > 50;

--3.Soru : customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir? 
select store_id, count(customer_id) 
from public.customer 
group by store_id; 


--4.Soru : city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra 
--en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.
select country_id, count(city_id)  
from public.city 
group by country_id 
order by count desc 
limit 1