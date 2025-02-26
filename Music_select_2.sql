SELECT name, duration 
FROM track 
WHERE duration IN (SELECT max(duration) FROM track);

SELECT name 
FROM track 
WHERE duration >= '00:03:30';

SELECT name
FROM collection 
WHERE collection."year" BETWEEN 2018 AND 2020;

SELECT name
FROM artist 
WHERE name NOT LIKE '% %';

SELECT name 
FROM track 
WHERE string_to_array(lower(name), ' ') && ARRAY['мой', 'my'];



