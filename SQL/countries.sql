select * from cities;
select * from countries;
select * from languages; 

-- ¿Qué consulta harías para obtener todos los países que hablan esloveno? 
-- Tu consulta debe devolver el nombre del país, el idioma y el porcentaje de idioma. 
-- Tu consulta debe organizar el resultado por porcentaje de idioma en orden descendente.

select lg.language, lg.percentage from languages lg
where lg.language LIKE '%lovene%'order by lg.percentage desc;
SELECT cou.name from countries cou
where cou.id in (16,96, 107,200) ;
-- 2. ¿Qué consulta ejecutarías para mostrar el número total de ciudades para cada país? 
-- Su consulta debe devolver el nombre del país y el número total de ciudades. 
-- Tu consulta debe organizar el resultado por el número de ciudades en orden descendente. 
select * from cities;
select * from countries;

select cn.name, count(cn.name) total_ciudades from cities ci
join countries cn on cn.id = country_id
group by cn.name 
order by count(cn.name)desc ;



-- 3. ¿Qué consulta harías para obtener todas las ciudades de México con una población de más de 500,000? 
-- Tu consulta debe organizar el resultado por población en orden descendente. (1)
select * from cities;
select * from countries;
select * from languages; 

select * from countries
 where countries.name like '%xico%'; -- id mexico 136
 
 select * from cities
 where country_id = 136 and population >500000 
 order by population desc ;

-- 4. ¿Qué consulta ejecutarías para obtener todos los idiomas en cada país con un porcentaje superior al 89%? Tu consulta debe organizar el resultado por porcentaje en orden descendente. (1)

select * from countries;
select * from languages;

select * from languages 
where  percentage > 89;

select languages.language, countries.name, languages.percentage from languages 
inner join countries on countries.id = languages.country_id 
where  percentage > 89
order by percentage desc;

-- 5. ¿Qué consulta haría para obtener todos los países con un área de superficie inferior a 501 y una población superior a 100,000? (2)

select * from countries
where surface_area < 501 
and population > 100000 ;

-- 6. ¿Qué consulta harías para obtener países con solo Monarquía Constitucional con un capital superior a 200 y una esperanza de vida superior a 75 años? (1)

select * from countries;-- Constitutional Monarchy

select * from countries
where government_form = 'Constitutional Monarchy'
and capital >200 and life_expectancy > 75
;

-- 7. ¿Qué consulta harías para obtener todas las ciudades de Argentina dentro del distrito de Buenos Aires y tener una población superior a 500,000? La consulta debe devolver el nombre del país, el nombre de la ciudad, el distrito y la población. (2)
select * from cities;
select * from countries;

select * from countries 
where name like '%tina%'; -- id =9

select * from cities
where country_id = 9 
and district like '%buenos%'
and population > 500000;

-- 8. ¿Qué consulta harías para resumir el número de países en cada región? La consulta debe mostrar el nombre de la región y el número de países. Además, la consulta debe organizar el resultado por el número de países en orden descendente. (2)
select * from countries;

select region, count(region) numero_paises from countries
group by region
order by count(region) desc;




	



