DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.Plans(
	plan_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    planName VARCHAR(20) NOT NULL,
    price DECIMAL(5,2) NULL
) engine = InnoDB;


CREATE TABLE SpotifyClone.Users(
	user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(80) NOT NULL,
    age INT NULL,
    subscription_date DATETIME NOT NULL,
    plan_id INT,
    FOREIGN KEY (plan_id) REFERENCES SpotifyClone.Plans(plan_id)
) engine = InnoDB;


CREATE TABLE SpotifyClone.Artists(
	artist_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fullName VARCHAR(80) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.Users_Artists(
	user_id INT NOT NULL, 
    artist_id INT NOT NULL,
    CONSTRAINT PK_Users_Artists PRIMARY KEY (user_id, artist_id),
    FOREIGN KEY (user_id) REFERENCES SpotifyClone.Users(user_id),
    FOREIGN KEY (artist_id) REFERENCES SpotifyClone.Artists(artist_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.ReleasesDates(
	release_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    release_date_precision YEAR NOT NULL
) engine = InnoDB;


CREATE TABLE SpotifyClone.Albums(
	album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    albumName VARCHAR(100) NOT NULL,
    artist_id INT,
    release_id INT,
    FOREIGN KEY (artist_id) REFERENCES SpotifyClone.Artists(artist_id),
    FOREIGN KEY (release_id)	REFERENCES SpotifyClone.ReleasesDates(release_id)
) engine = InnoDB;


CREATE TABLE SpotifyClone.Songs(
	song_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(80) NOT NULL,
    seconds_duration INT NOT NULL,
    album_id INT,
    FOREIGN KEY (album_id) REFERENCES SpotifyClone.Albums(album_id)
) engine = InnoDB;


CREATE TABLE SpotifyClone.Histories(
	user_id INT,
    song_id INT,
    playback_date DATETIME NOT NULL,
    CONSTRAINT historyId PRIMARY KEY (user_id, song_id), 
    FOREIGN KEY (user_id) REFERENCES SpotifyClone.Users(user_id),
    FOREIGN KEY (song_id) REFERENCES SpotifyClone.Songs(song_id)
) engine = InnoDB;