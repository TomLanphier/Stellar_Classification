# Stellar_Classification
Dataset Source: https://www.kaggle.com/fedesoriano/stellar-classification-dataset-sdss17

## Final Project Overview

We chose to select a stellar classification dataset that was compiled from the Sloan Digital Sky Survey which analyzed over 100,000 interstellar phenomena as either a star, galaxy, or quasar. The survey provided us with a wide array of observation data that included the object's alpha (right ascension angle), delta (declination angle), ultraviolet filter, green filter, red filter, infared filter, near infared filter, redshift, plate, the date the object was identified, and a variety of identification numbers relating to how the data was collected. In our analysis, we removed the object's identifiers (i.e. Object ID, Run ID, etc.) from the machine learning model because they had no impact on classifying what would the object would be.

### Column identifiers and meanings
![image](https://user-images.githubusercontent.com/92773195/156466962-665f5b20-747f-4f2d-9bc1-bc2f01782e4f.png)

Figure 1. Column identifications and their definitions.

The group was highly interested in the topic of astronomy, and learning which features of an astronomical object were most important in classifying it as a star, galaxy, or quasar was highly interesting to all group members which is why we picked this comprehensive and detailed dataset. 

In this project we hope to learn how accurate our models are at predicting future objects with the same kind of data provided as stars, galaxies, or quasars. Additionally, our goal is to understand which variables are most important in determining/classifying objects in those three groups. 

## Analysis
We created multiple types of machine learning models in pandas that included random forest classification, neural networks, and K-means clustering to determine the most accurate model at classifying which stellar objects. Multiple iterations of each model were created to verify the consistancy of the machine learning model type.

Random forest classification proved to be the most accurate modeling type with an average accuracy of 97.7% and a standard deviation of 0.03%. 

![Random Forest Accuracy Values](https://user-images.githubusercontent.com/91921522/160036675-61aa4ad1-fdbb-4144-950e-441b7e378211.png)

Figure 2. Accuracy values for 10 random forest models.

K-Means was found to be a less accurate machine learning model type for this classification with an average accuracy of 70.4% and a standard deviation of 17.45%.

![K-Means Accuracy Values](https://user-images.githubusercontent.com/91921522/160036772-d9bf58dd-e9e6-496b-8e1d-544833b4ff8d.png)

Figure 3. Accuracy values for 10 K-means models.

We also wanted to determine which features were the most important in determining the object's classification. Redshift was the most important feature in determining whether the object would be a star, quasar, or galaxy with a weight of 0.61. Since redshift was so heavily weighted in determining the object's classification, we also attempted an additional model that removed redshift from the dataset to see how accurate our models would be using all other features excluding redshift.

![image](https://user-images.githubusercontent.com/92773195/158912382-b45f74b1-a3eb-4b85-963b-58948692bd66.png)

A SQL database was also created with multiple tables to store our stellar classification data and linked to our Jupyter Notebook file. Jupyter Notebook was also used to show the locations the stellar objects in a 3D plot.

## Dashboard
For our dashboard, we used Tableau to create our visualizations. To start, we wanted to display the counts of galaxies, stars, and quasars contained in the dataset using a barchart. There are roughly 60k galaxies, 20k stars, and 20k quasars in the Sloan Digital Sky Survey dataset. 

Following that, and due to the nature of redshift being the most important feature in stellar classifcation, we decided to visualize the average redshift by stars, quasars, and galaxies. Quasars produced by the far the highest amount of redshift (approx. 1.7), galaxies (approx. 0.42), and stars had essentially 0 redshift. 

Finally, we wanted to visualize the filters used to observe the objects based on the type of light they emit and if we could spot any tendencies from there. We also used a floating filter that created an interactive element of the visualization for users to toggle between the galaxies, stars, and quasars. 

https://public.tableau.com/app/profile/john.molenda/viz/StellarClassification/StellarDashboard


In the second dashboard, we again used Tableau to graph the redshift (Y-axis) and alpha angles (x-axis) of the stellar bodies. The following visual is displayed in a scatter plot with the points being color coded based on the absolute magnatude in the infrared (z) wavelength spectrum.

This analysis shows the distribution of the redshift amoung stellar bodies in relation to earths location and showed unusual gaps in space. Furthermore the absolute magnitude in the infrared (z) spectrum showed an interesting correlation between the redshift and absolute magitude.

https://public.tableau.com/app/profile/edward.goldhill/viz/RedshiftvsAlpha/Dashboard1?publish=yes

Google Slides: https://docs.google.com/presentation/d/1oDV5cDXPCrpJuMypeMD07zXWSuc-ywPKzj5fVKoqTpM/edit?usp=sharing
