SELECT a.name FROM album a 
LEFT JOIN artistalbums a2 ON a.id = a2.album_id 
LEFT JOIN artist a3 ON a2.artist_id = a3.id 
LEFT JOIN artistgenres a4 ON a3.id  = a4.artist_id 
LEFT JOIN genres g ON a4.genre_id = g.id 
GROUP BY a.name 
HAVING count(DISTINCT g.name) > 1
ORDER BY a.name;

SELECT t.name FROM track t 
LEFT JOIN collectionsongs c ON t.id = c.track_id 
WHERE c.track_id  IS NULL;

SELECT a.name FROM artist a 
LEFT JOIN artistalbums a2 ON a.id = a2.artist_id 
LEFT JOIN album a3 ON a2.album_id = a3.id 
LEFT JOIN track t ON a3.id = t.album_id 
WHERE duration = (SELECT min(duration) FROM track);

SELECT a.name FROM album a 
LEFT JOIN track t ON a.id = t.id 
WHERE a.id IN (SELECT id FROM track
GROUP BY id
HAVING count(id) = (SELECT count(id) FROM track
GROUP BY id
LIMIT 1))
ORDER BY a.name;
