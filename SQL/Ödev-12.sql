--1. Soru : film tablosunda film uzunluğu length sütununda gösterilmektedir. 
--Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
select count(1) from film 
where length > 
	(select AVG(length) from film);

--2.Soru : film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
select count(1) from film
where rental_rate = 
	(select max(rental_rate) from film);

--3.Soru : film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
select * from film
where rental_rate = 
	(select min(rental_rate) from film) 
and replacement_cost = 
	(select min(replacement_cost) from film);

--4.Soru : payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
select count from 
	(select count(payment_id) from payment group by customer_id)
order by count desc; 