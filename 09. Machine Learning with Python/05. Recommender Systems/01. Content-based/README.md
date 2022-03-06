# Content-based Recommendation Systems
The main paradigm of a Content-based recommendation system is driven by the statement: “Show me more of the same of what I've liked before." Content-based systems try to figure out what a user's favorite aspects of an item are, and then make recommendations on items that share those aspects. 

A content-based recommendation system tries to recommend items to users based on their profile. The user's profile revolves around that user's preferences and tastes. It is shaped based on user ratings, including the number of times that user has clicked on different items or perhaps even liked those items. The recommendation process is based on the similarity between those items. Similarity or closeness of items is measured based on the similarity in the content of those items. 

For example, we have 4 movies, and the user likes or rates the first 2. If the 3rd is similar to movie 1 (e.g. in terms of their genre), the engine may also recommend movie 3 to the user. 

## Worked Example

### Background and assumptions
<p align="center">
  <img src="../Images/user_ratings.png" width="600">
</p>

- Assume we have a data set of only 6 movies. 
- This data set shows 3 movies that our user has watched and rated out of 10, 3 that the user has not watched (and therefore do not have a user rating yet), and also the genre of each of the movies. 
- For example, Batman versus Superman is in the Adventure, Super Hero genre and Guardians of the Galaxy is in the Comedy, Adventure, Super Hero and Science-fiction genres. 
- The user has given a rating of 2/10 to the first movie, 10/10 to the second movie, 8/10 to the third.
- The task of the recommender engine is to recommend one of the three candidate movies to this user, or in other words we want to predict what the user's possible rating would be of the three candidate movies if she were to watch them. To achieve this, we have to build the user profile.

### Weighing the genres
<p align="center">
  <img src="../Images/weighted_genres.png" width="600">
</p>

- First, we create an 'Input User Ratings' matrix to show the user's ratings for the movies that they have already watched. 
- Then, we encode the movies through the one-hot encoding approach. Genre of movies are used here as a feature set. We use the first three movies to make this matrix, which represents the movie feature set matrix. 
- Multiplying these two matrices gives the weighted feature set for the movies, or the 'Weighted Genre matrix', which represents the interests of the user for each genre based on the movies that they have watched. 
- Now, given the Weighted Genre Matrix, the profile of the active user can be shaped. Essentially, the weighted genres can be aggregated and then normalised (shown in the next step) to find the user profile. 
- Here, it clearly indicates that the user likes superhero movies more than other genres. This profile is used to figure out what movie is proper to recommend to this user.

### Using the user profile to create recommendations
<p align="center">
  <img src="../Images/user_recommendations.png" width="600">
</p>

- To recommend (or not recommend) movies that haven't been watched by the user, these movies must be encoded as well. 
- Multiply the User Profile matrix by the candidate Movie Matrix, which results in the Weighted Movies Matrix. It shows the weight of each genre with respect to the User Profile. 
- Now, aggregating these weighted ratings gives the active user's possible interest level in these three movies. In essence, it's the recommendation lists, which can be sorted to rank the movies and recommend them to the user. For example, we can say that the Hitchhiker's Guide to the Galaxy has the highest score in our list, and it's proper to recommend to the user. 

### Final recommendations
The result of this matrix multiplication is the following ratmings for the unwatched movies:
<p align="center">
  <img src="../Images/results.png" width="600">
</p>

### Advantages and disadvantages of content-based recommendations
The recommendation in a content-based system is based on user's taste and the content or feature set items. Such a model is very efficient, but in some cases, it doesn't work. For example, assume that that there is a a movie in the drama genre, which the user has never watch. This genre would not be in the user profile, and the recommender engine may never recommend any movie within other genres. This problem can be solved by other types of recommender systems such as collaborative filtering.
