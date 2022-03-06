# Recommender Systems

## Definition
Recommender systems capture the patterns of peoples' behaviour and use to predict what else they might want or like. One of the main advantages of using recommendation systems is that users get a broader exposure to many different products they might be interested in. This exposure encourages users towards continual usage or purchase of their product. Not only does this provide a better experience for the user but it benefits the service provider, as well, with increased potential revenue and better security for its customers. 


## Types of Recommender Systems / Recommendation Engines
There are generally 2 main types of recommendation systems: 
1. Content-based 
2. Collaborative filtering

<p align="center">
  <img src="Images/recommender_system_types.png" width="600">
</p>

Also, there are hybrid recommender systems, which combine various mechanisms. In terms of implementing recommender systems, there are 2 types:
1. Memory-based 
2. Model-based

In memory-based approaches, we use the entire user-item dataset to generate a recommendation system. It uses statistical techniques to approximate users or items. Examples of these techniques include: Pearson Correlation, Cosine Similarity and Euclidean Distance, among others. In model-based approaches, a model of users is developed in an attempt to learn their preferences. Models can be created using Machine Learning techniques like regression, clustering, classification, and so on. 


## Content-based Recommendation Systems
The main paradigm of a Content-based recommendation system is driven by the statement: “Show me more of the same of what I've liked before." Content-based systems try to figure out what a user's favorite aspects of an item are, and then make recommendations on items that share those aspects. 

A content-based recommendation system tries to recommend items to users based on their profile. The user's profile revolves around that user's preferences and tastes. It is shaped based on user ratings, including the number of times that user has clicked on different items or perhaps even liked those items. The recommendation process is based on the similarity between those items. Similarity or closeness of items is measured based on the similarity in the content of those items. 

For example, we have 4 movies, and the user likes or rates the first 2. If the 3rd is similar to movie 1 (e.g. in terms of their genre), the engine may also recommend movie 3 to the user. 

### Worked Example

#### Background and assumptions
<p align="center">
  <img src="Images/user_ratings.png" width="600">
</p>

- Assume we have a data set of only 6 movies. 
- This data set shows 3 movies that our user has watched and rated out of 10, 3 that the user has not watched (and therefore do not have a user rating yet), and also the genre of each of the movies. 
- For example, Batman versus Superman is in the Adventure, Super Hero genre and Guardians of the Galaxy is in the Comedy, Adventure, Super Hero and Science-fiction genres. 
- The user has given a rating of 2/10 to the first movie, 10/10 to the second movie, 8/10 to the third.
- The task of the recommender engine is to recommend one of the three candidate movies to this user, or in other words we want to predict what the user's possible rating would be of the three candidate movies if she were to watch them. To achieve this, we have to build the user profile.

#### Weighing the genres
<p align="center">
  <img src="Images/weighted_genres.png" width="600">
</p>

- First, we create an 'Input User Ratings' matrix to show the user's ratings for the movies that they have already watched. 
- Then, we encode the movies through the one-hot encoding approach. Genre of movies are used here as a feature set. We use the first three movies to make this matrix, which represents the movie feature set matrix. 
- Multiplying these two matrices gives the weighted feature set for the movies, or the 'Weighted Genre matrix', which represents the interests of the user for each genre based on the movies that they have watched. 
- Now, given the Weighted Genre Matrix, the profile of the active user can be shaped. Essentially, the weighted genres can be aggregated and then normalised (shown in the next step) to find the user profile. 
- Here, it clearly indicates that the user likes superhero movies more than other genres. This profile is used to figure out what movie is proper to recommend to this user.

#### Using the user profile to create recommendations
<p align="center">
  <img src="Images/user_recommendations.png" width="600">
</p>

- To recommend (or not recommend) movies that haven't been watched by the user, these movies must be encoded as well. 
- Multiply the User Profile matrix by the candidate Movie Matrix, which results in the Weighted Movies Matrix. It shows the weight of each genre with respect to the User Profile. 
- Now, aggregating these weighted ratings gives the active user's possible interest level in these three movies. In essence, it's the recommendation lists, which can be sorted to rank the movies and recommend them to the user. For example, we can say that the Hitchhiker's Guide to the Galaxy has the highest score in our list, and it's proper to recommend to the user. 

#### Final recommendations
The result of this matrix multiplication is the following ratmings for the unwatched movies:
<p align="center">
  <img src="Images/results.png" width="600">
</p>

#### Advantages and disadvantages of content-based recommendations
The recommendation in a content-based system is based on user's taste and the content or feature set items. Such a model is very efficient, but in some cases, it doesn't work. For example, assume that that there is a a movie in the drama genre, which the user has never watch. This genre would not be in the user profile, and the recommender engine may never recommend any movie within other genres. This problem can be solved by other types of recommender systems such as collaborative filtering.



## Collaborative Filtering Overview
Collaborative filtering is based on a user saying, “Tell me what's popular among my neighbors because I might like it too.” Collaborative filtering techniques find similar groups of users, and provide recommendations based on similar tastes within that group. In short, it assumes that a user might be interested in what similar users are interested in. 

It is based upon the fact that relationships exist between products and people's interests. Many recommendation systems use collaborative filtering to find these relationships and to give an accurate recommendation of a product that the user might like or be interested in. Collaborative filtering has 2 approaches: 
1. User-based, based on the user similarity or neighborhood
2. Item-based, based on similarity among items

<p align="center">
  <img src="Images/collaborative_filtering.png" width="600">
</p>

## User-based Collaborative Filtering
<p align="center">
  <img src="Images/user_based.png" width="600">
</p>

The following steps are required to perform user-based collaborative filtering:
1. Calculate the similarity weight between users.
2. Create a weighted rating matrix. This gives more weighting to users that are similar to the active user.
3. Generate the recommendation matrix by aggregating all of the weighted rates. The weighted rating values must be normalised as different numbers of users rated different items. This is done by dividing it by the sum of the similarity index for users.

The result is the potential rating that our active user will give to new items based on their similarity to other users.

#### Worked Example

##### Assumptions
- Assume that we have a simple user item matrix, which shows the ratings of 4 users for 5 different movies. 
- Also assume that the active user has watched and rated 3 out of these 5 movies.
<p align="center">
  <img src="Images/user_ratings_matrix.png" width="600">
</p>
- To find out which of the other 2 movies (that haven't been watched) should be recommended, the first step is to discover how similar the active user is to the other users. This similarity can be quantified through several different statistical and vectorial techniques such as distance or similarity measurements including Euclidean Distance, Pearson Correlation, Cosine Similarity, and so on. 

#### Similarity Weight
- To calculate the level of similarity between two users, we use the 3 movies that both the users have rated in the past. 
- One of the aforementioned measurements is performed to give a a similarity measurement, such that here, the similarities are 0.7, 0.9, and 0.4 between the active user and other users. These numbers represent similarity weights or proximity of the active user to other users in the dataset. 
<p align="center">
  <img src="Images/similarity_weights.png" width="600">
</p>

#### Weighted Rating Matrix
- The next step is to create a weighted rating matrix. 
- Multiply the similarity weights by the user ratings. This results in a weighted ratings matrix, which represents the user's neighbors opinion about the two candidate movies for recommendation. 
<p align="center">
  <img src="Images/weighted_ratings_matrix.png" width="600">
</p>
- In fact, it incorporates the behaviour of other users and gives more weight to the ratings of those users who are more similar to the active user. 

#### Recommendation Matrix
- Now, aggregrating all of the weighted rates generates the recommendation matrix. 
- However, as 3 users rated the first potential movie and 2 users rated the second movie, the weighted rating values must be normalised. To do so, divide by the sum of the similarity index for users. The result is the potential rating that the active user will give to these movies based on her similarity to other users. 
- This can be used to rank the movies for providing recommendation to our active user.
<p align="center">
  <img src="Images/recommendation_matrix.png" width="600">
</p>


 

## Item-based Collaborative Filtering
In the user-based approach, the recommendation is based on users of the same neighborhood with whom he or she shares common preferences. In the item-based approach, similar items build neighborhoods on the behavior of users.

## Use Cases
Recommender systems are probably the set of algorithms that are most commonly interacted with in modern life, with sites from Amazon to Netflix using some form of recommendation system/engine to suggest items to buy, films to watch, and to provide a better experience on the web.

Netflix is driven by customer selection, whereby if a certain movie gets viewed frequently enough, the recommender system ensures that that movie gets an increasing number of recommendations.

On social media, sites like Facebook or LinkedIn regularly recommend friendships and connections. Recommender systems are even used to personalize your experience on the web. For example, when you go to a news platform website, a recommender system will make note of the types of stories that you clicked on and make recommendations on which types of stories you might be interested in reading in future. 

## Challenges of Collaborative Filtering
Collaborative filtering is a very effective recommendation system. However, there are some challenges with it as well. 

### Data Sparsity
Data sparsity happens when you have a large data set of users who generally rate only a limited number of items. As mentioned, collaborative based recommenders can only predict scoring of an item if there are other users who have rated it. Due to sparsity, there might not be enough ratings in the user item dataset which makes it impossible to provide proper recommendations. 

### Cold Start 
Cold start refers to the difficulty the recommendation system has when there is a new user, and as such a profile doesn't exist for them yet. Cold start can also happen when we have a new item which has not received a rating. 

### Scalability 
Scalability can become an issue as well. As the number of users or items increases and the amount of data expands, collaborative filtering algorithms will begin to suffer drops in performance, simply due to growth and the similarity computation. There are some solutions for each of these challenges such as using hybrid based recommender systems, but they are out of scope of this course.
