# Introduction to Machine Learning

## Definition
Arthur Samuel, a pioneer in the field of computer gaming and artificial intelligence, coined the term "machine learning" in 1959 while at IBM. He defined at as the subfield of computer science that gives "computers the ability to learn without being explicitly programmed".

Machine learning algorithms, inspired by the human learning process, iteratively learn from data, and allow computers to find hidden insights. These models help us in a variety of tasks, such as object recognition, summarization, recommendation, and so on. 

## Machine Learning Techniques
Some major machine learning techniques, and their purposes, include:
- Regression - to predict continuous values, e.g. estimating CO2 emissions from a car's engine
- Classification - to predict item class/category, e.g. determining whether a cell is benign or malignant
- Clustering - to find the structure of data, e.g. segmentation of customer data into similar groups
- Association - to associate frequent co-occurring items/events, e.g. finding grocery items that are commonly bought together by a particular customer
- Anomaly Detection - to discover abnormal and unusual cases, e.g. detecting credit card fraud
- Sequence Mining - to predict next events, e.g. the click-stream in websites
- Dimension Reduction - to reduce the size of data
- Recommendation Systems - to recommend items, e.g. recommending movies based on previous watch history

## The Difference between Artificial Intelligence (AI), Machine Learning and Deep Learning
AI tries to make computers intelligent in order to mimic the cognitive functions of humans. So, AI is a general field with a broad scope including: Computer Vision, Language Processing, Creativity, and Summarization. 

Machine Learning is the branch of AI that covers the statistical part of artificial intelligence. It teaches the computer to solve problems by looking at hundreds or thousands of examples, learning from them, and then using that experience to solve the same problem in new situations.

Deep Learning is a very special field of Machine Learning where computers can actually learn and make intelligent decisions on their own. Deep learning involves a deeper level of automation in comparison with most machine learning algorithms.

So in summary, AI is the broadest term, ML is a subset of AI, and DL is a subset of ML.



## Supervised vs Unsupervised Learning

### Definition
Supervised learning deals with un-labelled data, while unsupervised learning deals with labelled data.


### Supervised Learning
There are two types of supervised learning techniques:
- Classification - the process of predicting a discrete class label, or category
- Regression - the process of predicting a continuous value

To supervise a machine learning model, we load the model with knowledge so that we can have it predict future instances. To do this, we split the data into 2 parts:
- Labelled training data, where we know the outcome/result
- Testing data, which is not labelled, and we do not know the outcome/result
We teach the model by training it with the training data.

### Unsupervised Learning
Unsupervised learning involves data without labels, and we let the model work on its own to discover information that may not be visible to the human eye. It means, the unsupervised algorithm trains on the dataset, and draws conclusions on un-labelled data. Generally speaking, unsupervised learning has more difficult algorithms than supervised learning, since we know little to no information about the data, or the outcomes that are to be expected. 
The most widely used unsupervised learning techniques are:
- Dimension Reduction / Feature Selection - this reduces redundant features to make later classification easier
- Density Estimation - a simple concept that is mostly used to explore the data to find some structure within it
- Market Basket Analysis - a modelling technique based upon the theory that if you buy a certain group of items, you're more likely to buy another group of items
- Clustering - used for grouping data points, or objects that are somehow similar

Clustering is one of the most popular unsupervised machine learning techniques, and it has many applications in different domains, whether it be a bank's desire to segment customers based on certain characteristics, or helping an individual to organize their favourite types of music. Generally speaking though, clustering is used mostly for discovering structure, summarization, and anomaly detection. 