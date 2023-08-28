CREATE TABLE album_list (
	id_album SERIAL PRIMARY KEY,
	name_album VARCHAR(100) NOT NULL,
	year_of_issue DATE NOT NULL
);
CREATE TABLE ist_of_performers(
	id_performer SERIAL PRIMARY KEY,
	name_performer VARCHAR(100) NOT NULL
);
CREATE TABLE list_of_musical_genres(
	id_musical_genre SERIAL PRIMARY KEY,
	name_musical_genre VARCHAR(100) NOT NULL
);
CREATE TABLE track_list(
	id_track SERIAL PRIMARY KEY,
	id_album INTEGER REFERENCES album_list(id_album),
	name_track VARCHAR(100) NOT NULL,
	track_duration TIME
);
CREATE TABLE track_collection(
	id_collection SERIAL PRIMARY KEY,
	name_collection VARCHAR(100),
	year_of_issue DATE
);
CREATE TABLE performers_album(
	id SERIAL PRIMARY KEY,
	id_performer INTEGER REFERENCES ist_of_performers(id_performer),
	id_album INTEGER REFERENCES album_list(id_album)
);
CREATE TABLE performers_musical_genres(
	id SERIAL PRIMARY KEY,
	id_performer INTEGER REFERENCES ist_of_performers(id_performer),
	id_musical_genre INTEGER REFERENCES list_of_musical_genres(id_musical_genre)
);
CREATE TABLE track_list_collection(
	id SERIAL PRIMARY KEY, 
	id_track INTEGER REFERENCES track_list(id_track),
	id_collection INTEGER REFERENCES track_collection(id_collection)
);
