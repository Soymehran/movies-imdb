SQL Queries for Movie Database
1. Movies Without Any Genre
Retrieve the titles of movies that do not have any associated genre. The result should have a single column named title.

2. Movies Where the Lead Actor is Also the Director
Retrieve a list of movies where the leading actor (cast_order = 0) is also the director. The result should include:

Title: Movie name
Director/Leading actor: Name of the person
The output should be sorted by movie title.
3. People with the Most Leading Roles
Retrieve a list of individuals who have played the lead role (cast_order = 0) in the most movies. The result should include:

Name: Person’s name
count_of_movies: Number of movies in which they played the lead role
Sort the results in descending order by the number of lead roles, and in case of a tie, sort by name.
4. Movie Ratings Statistics per Genre
Retrieve statistics on movie ratings for each genre, including:

avg_rating: Average rating of movies in that genre
max_rating: Highest average rating in that genre
min_rating: Lowest average rating in that genre
Sort the results in descending order based on the average rating.
5. Top 10 Actor Pairs Who Co-Starred Most Often
Retrieve the top 10 pairs of actors who have appeared in the most movies together. The result should include:

person #1: Name of the first actor
person #2: Name of the second actor
movies_played_together: Number of movies they co-starred in
Sort the results in descending order by the number of shared movies, and in case of a tie, sort by the first and then second actor’s name.






