CREATE DATABASE movie_ratings;
USE movie_ratings;

CREATE TABLE movies(
	movie_id INT,
    movie_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (movie_id)
);


CREATE TABLE person(
	person_id INT,
    person_name VARCHAR(50),
    PRIMARY KEY (person_id)
);

CREATE TABLE rating(
	person_id INT,
    movie_id INT,
    rating INT,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (person_id) REFERENCES person(person_id)
    );
    


INSERT INTO movies (movie_id, movie_name) VALUES
	(1, "Avatar: The Way of Water"),
    (2, "Black Panther: Wakanda Forever"),
    (3, "Top Gun: Maverick"),
    (4, "The Menu"),
    (5, "Glass Onion: A Knives Out Mystery"),
    (6, "Puss in Boots: The Last Wish");
    
INSERT INTO person (person_id, person_name) VALUES
	(1, "Peng"),
    (2, "Jessica"),
    (3, "Alan"),
    (4, "David"),
    (5, "William");

INSERT INTO rating (person_id, movie_id, rating) VALUES
	(1, 1, 4),
    (1, 2, 2),
    (1, 3, 4),
    (1, 4, 3),
    (1, 5, 5),
    (1, 6, NULL),
    (2, 1, 3),
    (2, 2, 4),
    (2, 3, 1),
    (2, 4, 5),
    (2, 5, NULL),
    (2, 6, 4),
    (3, 1, 3),
    (3, 2, 1),
    (3, 3, 3),
    (3, 4, 2),
    (3, 5, 3),
    (3, 6, NULL),
    (4, 1, 5),
    (4, 2, 4),
    (4, 3, 5),
    (4, 4, NULL),
    (4, 5, 5),
    (4, 6, 3),
    (5, 1, 5),
    (5, 2, 2),
    (5, 3, 3),
    (5, 4, 4),
    (5, 5, 3),
    (5, 6, NULL);



SELECT * from movies;
SELECT * from person;
SELECT * from rating;

SELECT movie_name,person_name,rating
FROM person p
LEFT JOIN rating r
	ON p.person_id = r.person_id
LEFT JOIN movies m
	ON m.movie_id = r.movie_id
ORDER BY movie_name
