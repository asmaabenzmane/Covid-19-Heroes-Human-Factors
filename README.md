# Covid-19-Heroes-Human-Factors
The emergence and spread of infectious diseases, like COVID-19, may well continue. Many factors, both environmental and anthropogenic, can contribute to this trend. This challenge explores human activities that may be directly or indirectly related to the spread of COVID-19 locally and around the globe. 
Our mission : -Identify the relationship between human activities and Covid-19 cases and determine factors that would help predict hot spots in the spread of the virus. 
Summary of the project:
-We propose through this project an interactive App "COVID-19 Heroes", that aims to develop our understanding of COVID-19 factors through the experience of users. -We've used a machine learning algorithm called SVM (Support Vector Machine) to classify regions into two classes : a hot-spot or non hot-spot. -Data we've used through this project is collecting from the Ministry of Health in our country and which contains the number of covid-19 cases according to each region in Morocco, we can also apply the data of Nasa and of any country to classify its regions since that our algorithm is flexible and applicable to any country.

Our two proposed algorithms have the answer of all these challenge’s questions :
Do geographic or temporal patterns from COVID-19 disease mapping reveal insights into human factors that may be related to the spread of the disease? 
Could human activities that impact the environment play an indirect role in furthering COVID-19 spread? Are certain activities correlated with specific disease presentations or increased severity?

Humain factors :
Although there are many, we propose some of the human factors (as explanatory variables)that explain the degree of virus spread and that can be used in our data base, as follows:
1.	Measurement of polution
2.	The rate of destruction of natural habitats by humans
3.	Animal trafficking
… etc


Approach of the algorithm 1:
In the first algorithm, we propose an approach that can be adapted to any country and which consists of entering data (the number of daily cases of  covid 19 contamination = nombre_des_cas_9jui) for each city in a given country (Morocco in our case) and which makes it possible to predict hotspots (the cities most affected by the virus) and non-hot spots (the cities least affected by the virus).
Our dataset consists of two columns as follows:
1)-Region
2)-nombre_des_cas_9jui
and the algorithm is implemented in file : Space_Apps.R and the output in Space_Apps.txt (attached herewith)
We have constructed a simple and efficient function to predict hotspots cities(class 1) and non-hotspots cities(class 0) in a given country. The data set can be adapted to each country, in other words we can apply our  « points_chauds » function to any country, we just need to have the number of daily cases of covid 19 contamination:
n (= number of cities in the given country)
At the end of the algorithm and using cbind we will modify the table by adding a new column that describes the hotspots cities(1) and non hotspots cities (0).
In the second algorithm we’ll use the result of that first algo, but the dataset won't be the same. In fact, we have only proposed the algorithm in a screen : Algorithme 2.pnj
but one can easily fix it for any dataset containing the realisations of all dependent variables that explain te spread of the virus. It will contain the information for a specific day and we will process it after making a prediction about the nature of each city : hotspot or not. 
The algorithm (Algorithme 2.pnj) is adapted to any dataset of any country.
It is enough to know the number of explanatory variables p and the number of cities n in a given country and of course the realizations of the explanatory variables.

x is the mat matrix to which are added other columns describing the results of a study carried out in each of the regions and whose purpose is to calculate measures of pollution and other human activities (destruction of natural habitats, number of trees cut down for selling their wood, etc.).
After removing the ptc column from our program, we set a column at each step and consider the variable described by this column as a variable to be explained . We calculate the average of this column and we contribute 1 to the city whose measurement exceeds the average and 0 to the city whose measurement is smaller than the average; We apply the SVM to see if we can use this machine learning tool to make predictions and classify cities in 2 classes: polluted(1) unpolluted(0) without having to calculate the pollution measurements.
We repeat the same process for the rest of the explanatory variables; then we compare each column (making an explanatory variable) with the ptc column of the mat table to see if these variables have an influence on the spread of the virus or not. 
We then come out with the relevant variables that explain the spread of the virus.











In this algorithm we're going to tackle the most important step:
Divide our data set into two subsets: one for learning (70%) and one for testing (30%).
After we do this we can apply a method of machine learning ; for example the support vector machine. we'll end up with two classes: 
for example for the first variable x1: 
•	1 (the class of polluted points) and 0 (the class of unpolluted points).
And finally we propose to use the cmm matrix whose lens is to see the relationship between each human factor (explanatory variable) and hotspots. 
For example: the relationship between hotspots  and polluted cities. This will allow us to identify the human factors that actually contribute to the spread of Covid 19 virus and therefore act in advance in order to reduce the risk of contaminations. 
We will at the end of this algorithm modify our data set by removing the variables that do not influence the spread of the virus i.e. irrelevant variables .

First, our dataset consists of p columns and n rows ( as dataset_Algorithme 2.pnj)
1)Step 1 - We read our data set. 
2)Step 2 –we divide  our dataset in two subsets:
•	one for learning.
•	the other for testing. 

Throughout the program, our data set (mat modified) will be noted x:
x1 is a vector that contains the pollution level measurements for all cities for any given day in the table and others factors Xj {j=2,…,p} could be any human activities measured on the same day  :
•	The result of analysing this cmm table will give us the relevant variables, i.e. the variables that really explains the spread of the virus, we assume that there is m relevant variables.
•	we will calculate a percentage noted « s » in order to use it for the « COVID-19 Heroes » virtual application we’ve built and which we will use to give allergies to any user of our application :
Qfter having found the m relevant variables we modify the previous table which will contain only these m variables.
              Each user is in a specific city so : 
             for a fixed city i, we will execute the loop (Covid_19_Heroes_loop.pnj)




