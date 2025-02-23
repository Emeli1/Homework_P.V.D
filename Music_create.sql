CREATE TABLE IF NOT EXISTS Genres(
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL    
);

CREATE TABLE IF NOT EXISTS Artist(
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS ArtistGenres(
	genre_id INTEGER REFERENCES Genres(id),
	artist_id INTEGER REFERENCES Artist(id),
	CONSTRAINT pk_ArtistGenres PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS Album(
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS ArtistAlbums(
	artist_id INTEGER REFERENCES Artist(id),
	album_id INTEGER REFERENCES Album(id),
	CONSTRAINT pk_ArtistAlbums PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS Track(
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	album_id INTEGER REFERENCES Album(id),
	duration TIME
);

CREATE TABLE IF NOT EXISTS Collection(
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS CollectionSongs(
	track_id INTEGER REFERENCES Track(id),
	collection_id INTEGER REFERENCES Collection(id),
	CONSTRAINT pk_CollectionSongs PRIMARY KEY (track_id, collection_id)
);



