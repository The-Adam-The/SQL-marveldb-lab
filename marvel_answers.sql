--1. Return ALL the data in the 'movies' table.
SELECT * FROM movies;

--2. Return ONLY the name column from the 'people' table
SELECT name from PEOPLE;

--3.Oops! Someone spelled Krusty The Clown's name wrong! Change it to reflect the proper spelling (Crusty should be Krusty).
UPDATE people SET name = ('Krusty the Clown') WHERE name = 'Crusty the Clown';


--4. Return ONLY Homer Simpson's name from the 'people' table.
SELECT * FROM people WHERE name = 'Homer Simpson';

--5. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

DELETE FROM movies WHERE title = 'Batman Begins';


--6. We forgot one of the main characters! Add Bart Simpson to the 'people' table
INSERT INTO people (name) VALUES ('Bart Simpson');

--7. Eric Cartman has decided to hijack our movie evening, Remove him from the table of people.
DELETE FROM people  WHERE name = 'Eric Cartman';

--8. The cinema has just heard that they will be holding an exclusive midnight showing of 'Avengers: Infinity War'!! Create a new entry in the 'movies' table to reflect this.
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Infinity War', 2022, '00:00')

--9. The cinema would like to make the Iron Man movies a triple billing. Find out the show time of "Iron Man 2" and set the show time of "Iron Man 3" to start two hours later.

SELECT * FROM movies WHERE title = 'Iron Man 2';
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2014, '20:45');

--10. Extension
--Research how to delete multiple entries from your table in a single command.

DELETE FROM movies WHERE id IN (1,2,3);

DELETE FROM movies WHERE year > 2017;

DELETE FROM movies WHERE year >=2012 AND year <= 2014;

DELETE FROM movies where id != 15;

--I killed more Avengers than Thanos. :)