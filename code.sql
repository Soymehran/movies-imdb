-- Section1

SELECT movie.title
FROM movie
         LEFT JOIN movie_genres mg ON movie.movie_id = mg.movie_id
WHERE genre_id IS NULL;

-- Section2

SELECT movie.title AS Title, person.person_name AS 'Director/Leading actor'
FROM movie
         JOIN movie_cast mc ON movie.movie_id = mc.movie_id
         JOIN movie_crew m ON movie.movie_id = m.movie_id
         JOIN person ON person.person_id = mc.person_id
WHERE mc.person_id = m.person_id
  AND mc.cast_order = 0
  AND m.job = 'director'
ORDER BY Title;

-- Section3

SELECT person_name AS Name, count(person_name) AS count_of_movies
FROM movie_cast
         JOIN person p ON p.person_id = movie_cast.person_id
WHERE cast_order = 0
GROUP BY person_name
ORDER BY count_of_movies DESC, Name ASC;

-- Section4

SELECT genre.genre_name        AS genre,
       AVG(movie.vote_average) AS avg_rating,
       MAX(movie.vote_average) AS max_rating,
       MIN(movie.vote_average) AS min_rating
FROM movie
         JOIN movie_genres mg ON movie.movie_id = mg.movie_id
         JOIN genre ON mg.genre_id = genre.genre_id
GROUP BY genre
ORDER BY avg_rating DESC;

-- Section5

SELECT p1.person_name      AS "person #1",
       p2.person_name      AS "person #2",
       COUNT(a.movie_id) AS movies_played_together
FROM movie_cast a
         JOIN movie_cast b ON a.movie_id = b.movie_id AND a.person_id < b.person_id
         JOIN person p1 ON a.person_id = p1.person_id
         JOIN person p2 ON b.person_id = p2.person_id
GROUP BY p1.person_name, p2.person_name
ORDER BY movies_played_together DESC, p1.person_name, p2.person_name
LIMIT 10;

