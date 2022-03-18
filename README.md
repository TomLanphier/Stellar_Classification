# Stellar_Classification
Dataset Source: https://www.kaggle.com/fedesoriano/stellar-classification-dataset-sdss17

## Final Project Overview

We chose to select a stellar classification dataset that was compiled from the Sloan Digital Sky Survey which analyzed over 100,000 interstellar phenomena as either a star, galaxy, or quasar. The survey provided us with a wide array of observation data that included the object's alpha (right ascension angle), delta (declination angle), ultraviolet filter, green filter, red filter, infared filter, near infared filter, redshift, plate, the date the object was identified, and a variety of identification numbers relating to how the data was collected. In our analysis, we removed the object's identifiers (i.e. Object ID, Run ID, etc.) from the machine learning model because they had no impact on classifying what would the object would be.

### Column identifiers and meanings
![image](https://user-images.githubusercontent.com/92773195/156466962-665f5b20-747f-4f2d-9bc1-bc2f01782e4f.png)


The group was highly interested in the topic of astronomy, and learning which features of an astronomical object were most important in classifying it as a star, galaxy, or quasar was highly interesting to all group members which is why we picked this comprehensive and detailed dataset. 

In this project we hope to learn how accurate our models are at predicting future objects with the same kind of data provided as stars, galaxies, or quasars. Additionally, our goal is to understand which variables are most important in determining/classifying objects in those three groups. 

## Analysis
We attempted multiple machine learning models that included random forest classification, neural networks, undersampling, K-means clustering to determine the most accurate model at classifying which stellar objects were stars, quasars, or galaxies. We also wanted to determine which features were the most important in determining the object's classifcation. 

Ultimately, we determined that random forest classification was the most accurate model at predicting a stellar object's classification as it had an accuracy of roughly 98%
![image](https://user-images.githubusercontent.com/92773195/158912311-19d76f82-7561-4659-87df-ddc4a39b7ae6.png)

Redshift was the most important feature in determining whether the object would be a star, quasar, or galaxy with a weight of 0.61. Since redshift was so heavily weighted in determining the object's classification, we also attempted an additional model that removed redshift from the dataset to see how accurate our models would be using all other features excluding redshift.

![image](https://user-images.githubusercontent.com/92773195/158912382-b45f74b1-a3eb-4b85-963b-58948692bd66.png)

A SQL database was also created with multiple tables to store our stellar classification data and linked to our Jupyter Notebook file.


## Communication Protocols
The group communicated through our slack channel and met over Zoom multiple times to discuss the project. 



