INSERT INTO genres(name)
VALUES
	('Рок'),
	('Рэп'),
	('Поп');

INSERT INTO artist(name)
VALUES
	('Muse'),
	('The Killers'),
	('Eminem'),
	('Ed Sheeran');


INSERT INTO artistgenres(genre_id, artist_id)
VALUES
	(1, 1),
	(1, 2),
	(2, 3),
	(3, 4);
	
INSERT INTO album(name, year)
VALUES 
	('Will of the People', 2020),
	('Pressure Machine', 2018),
	('The Death of Slim Shady', 2024),
	('Autumn Variations', 2023);

INSERT INTO artistalbums (artist_id, album_id)
VALUES
	(1,1),
	(2,2),
	(3,3),
	(4,4);

INSERT INTO track (name, album_id, duration)
VALUES 
	('Will of the People', 1, '00:03:18'),
	('Compliance', 1, '00:04:10'),
	('West Hills', 2, '00:05:42'),
	('Quiet Town', 2, '00:04:45'),
	('Habits', 3, '00:04:58'),
	('Brand New Dance', 3, '00:03:27'),
	('Magical', 4, '00:03:14'),
	('My England', 4, '00:03:46');

INSERT INTO collection (name, year)
VALUES 
	('The Greatest hits', 2020),
	('Rebel Diamonds', 2020),
	('All songs', 2025),
	('The Best', 2024);

INSERT INTO collectionsongs (track_id, collection_id)
VALUES
	(2,1),
	(4,2),
	(5,3),
	(8,4);

INSERT INTO artistgenres(genre_id, artist_id)
VALUES
	(1,4);
