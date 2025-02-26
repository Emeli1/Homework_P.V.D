SELECT genre_id, count(*) FROM artistgenres 
GROUP BY genre_id
ORDER BY count(*) DESC;

SELECT count(t.name) FROM album a
JOIN track t ON t.album_id = a.id
WHERE a."year"   BETWEEN 2019 AND 2020;

SELECT album_id, avg(duration) avr_duration FROM track t
GROUP BY album_id 
ORDER BY avr_duration DESC;

SELECT DISTINCT name FROM artist
WHERE name NOT IN (SELECT DISTINCT a.name FROM artist a
LEFT JOIN artistalbums a2 ON a2.artist_id = a.id
LEFT JOIN album al ON al.id = a.id
WHERE al."year"  = 2020)
ORDER BY name;

SELECT DISTINCT c.name FROM collection c
LEFT JOIN collectionsongs c2 ON c2.collection_id = c.id
LEFT JOIN track t ON t.id = c2.track_id 
LEFT JOIN album a ON a.id = t.album_id 
LEFT JOIN artistalbums a2 ON a2.album_id = a.id
LEFT JOIN artist a3 ON a3.id = a2.artist_id 
WHERE a3.name LIKE '%Muse%'
ORDER BY c.name;


