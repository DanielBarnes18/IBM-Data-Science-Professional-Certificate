# Clustering

## Definition
A cluster is a group of data points or objects in a dataset that are similar to other objects in the group, and dissimilar to datapoints in other clusters.
Clustering is an unsupervised machine learning method of finding clusters in a dataset, i.e. grouping data based on the similarity to other data points.


## Use Cases

### Customer Segmentation
One of the most popular use cases for clustering is in customer segmentation, particularly within the retail sector. It allows for historical data to be used, and for customers to be grouped into clusters based on similar characteristics, e.g. age, education, and so on. This can then allow businesses to target specific groups of customers, so as to more effectively allocate marketing resources. For example, one group might contain customers who are high profit and low risk. That is, more likely to purchase products or subscribe for a service. Knowing this information allows a business to devote more time and attention to retaining these customers. Another group might include customers from nonprofit organizations and so on. 

A general segmentation process is not usually feasible for large volumes of varied data, therefore you need an analytical approach to deriving segments and groups from large datasets. Customers can be grouped based on several factors, including age, gender, interests, spending habits and so on. The important requirement is to use the available data to understand and identify how customers are similar to each other. 

Historical customer data could also be used to cluster customers demographically. This allows for a profile to be created for each group, that considers the common characteristics of each cluster. For example, the first group made up of affluent and middle aged customers. The second is made up of young, educated and middle income customers, and the third group includes young and low income customers. Finally, individuals in the dataset can be assigned to one of these groups or segments of customers. Cross joining this segmented dataset with the dataset of the product or services that customers purchase from your company provides potentially valuable information and helps to understand and predict the differences and individual customers preferences and their buying behaviors across various products. 

### Other Applications
In banking, analysts find clusters of normal transactions to find the patterns of fraudulent credit card usage. Also they use clustering to identify clusters of customers. For instance, to find loyal customers versus churned customers. 

In the insurance industry, clustering is used for fraud detection in claims analysis, or to evaluate the insurance risk of certain customers based on their segments. 

In publication media, clustering is used to auto categorize news based on his content or to tag news, then cluster it so as to recommend similar news articles to readers. 

In medicine, it can be used to characterize patient behavior, based on their similar characteristics. So as to identify successful medical therapies for different illnesses or in biology, clustering is used to group genes with similar expression patterns or to cluster genetic markers to identify family ties. 


## Conclusions
Generally clustering can be used for one of the following purposes: exploratory data analysis, summary generation or reducing the scale, outlier detection- especially to be used for fraud detection or noise removal, finding duplicates and datasets or as a pre-processing step for either prediction, other data mining tasks or as part of a complex system. 

## Scope
This module will look at three main types of clustering algorithms and their characteristics. 

### Partition-based Clustering
Partition-based clustering is a group of clustering algorithms that produces sphere-like clusters, such as; K-Means, K-Medians or Fuzzy c-Means. These algorithms are relatively efficient and are used for medium and large sized databases. Hierarchical clustering algorithms produce trees of clusters, such as agglomerative and divisive algorithms. This group of algorithms are very intuitive and are generally good for use with small size datasets. 

### Hierarchical Clustering
Hierarchical clustering algorithms build a hierarchy of clusters where each node is a cluster consisting of the clusters of its daughter nodes. Strategies for hierarchical clustering generally fall into two types:
- Divisive - top down, so you start with all observations in a large cluster and break it down into smaller pieces
- Agglomerative - bottom up, where each observation starts in its own cluster and pairs of clusters are merged together as they move up the hierarchy. 

The agglomerative approach is more popular among data scientists and is considered in this course.

### Density-based Clustering
Density-based clustering algorithms produce arbitrary shaped clusters. They are especially good when dealing with spatial clusters or when there is noise in your data set. For example, the DB scan algorithm. 
