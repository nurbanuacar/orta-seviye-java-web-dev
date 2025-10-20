--1.Soru : film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sıralayınız.
select * from public.film
where title like '%n' 
order by length desc limit 5

--2.Soru : film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten 
--en kısa (length) ikinci(6,7,8,9,10) 5 filmi(6,7,8,9,10) sıralayınız.
select * from public.film
where title like '%n' 
order by length 
offset 6 limit 5 

--3.Soru : customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada 
--store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.
select * from public.customer 
where store_id = 1
order by last_name desc
limit 4