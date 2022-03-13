# Applied Data Science Capstone
<p align="center">
  <img src="Images/TitlePage.png" width="600">
</p>

## 📄 Summary
This capstone project will ultimately **predict if the Space X Falcon 9 first stage will land successfully**. 

### Context and Business Understanding
- SpaceX launches Falcon 9 rockets at a cost of around $62m. This is considerably cheaper than other providers (which usually cost upwards of $165m), and much of the savings are because SpaceX can land, and then re-use the first stage of the rocket. 

- If we can make predictions on whether the first stage will land, we can determine the cost of a launch, and use this information to assess whether or not an alternate company should bid against SpaceX for a rocket launch.

## 📑 Main Topics 
This project follows the usual main steps for a data science project:
1. Data Collection
2. Data Manipulation and Exploration
3. Data Modelling and Evaluation

#### Details of Techniques and Methods Used:
1. Data Collection
   - Making `GET` requests to the SpaceX API
   - Web Scraping
2. Data Manipulation and Exploration
   - Loading the dataset into a table in a Db2 database
   - Using SQL queries to manipulate and evaluate the Spacex dataset
   - Exploratory Data Analysis (EDA) using `Pandas` and `Matplotlib`
   - Feature engineering using `Pandas`
   - Data Visualization
     - Geospatial analytics using `Folium`
     - Creating an interactive dashboard using `Plotly Dash`
3. Data Modelling and Evaluation
   - Using `scikit-learn` to:
      - Preprocess (standardize) the data
      - Split the data into training and testing data using `train_test_split`
      - Train different classification models
      - Find hyperparameters using `GridSearchCV`
   - Plotting confusion matrices for each classification model 
   - Assessing the accuracy of each classification model


## 🔑 Key Skills Learned 
- 

## 🏆 Certificates 
