# Covid-19-Heroes-Human-Factors
The emergence and spread of infectious diseases, like COVID-19, may well continue. Many factors, both environmental and anthropogenic, can contribute to this trend. This challenge explores human activities that may be directly or indirectly related to the spread of COVID-19 locally and around the globe. 
Our mission : -Identify the relationship between human activities and Covid-19 cases and determine factors that would help predict hot spots in the spread of the virus. 
Summary of the project:
-We propose through this project an interactive App "COVID-19 Heroes", that aims to develop our understanding of COVID-19 factors through the experience of users. -We've used a machine learning algorithm called SVM (Support Vector Machine) to classify regions into two classes : a hot-spot or non hot-spot. -Data we've used through this project is collecting from the Ministry of Health in our country and which contains the number of covid-19 cases according to each region in Morocco, we can also apply the data of Nasa and of any country to classify its regions since that our algorithm is flexible and applicable to any country.

Approach of the algorithm 1:
In the first algorithm, we propose an approach that can be adapted to any country and which consists of entering data (the number of daily cases of  covid 19 contamination = nombre_des_cas_9jui) for each city in a given country (Morocco in our case) and which makes it possible to predict hotspots (the cities most affected by the virus) and non-hot spots (the cities least affected by the virus).
Our dataset consists of two columns as follows:
1)-Region
2)-nombre_des_cas_9jui
and the algorithm is implemented in file : Space_Apps.R and the output in Space_Apps.txt (attached herewith)
We have constructed a simple and efficient function to predict hotspots cities(class 1) and non-hotspots cities(class 0) in a given country. The data set can be adapted to each country, in other words we can apply our « points_chauds » function to any country, we just need to have the number of daily cases of covid 19 contamination:
n (= number of cities in the given country)
 



