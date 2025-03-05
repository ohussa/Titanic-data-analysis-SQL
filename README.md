# Titanic passengers dataAnalysis project
1. This is my first data analysis project.
2. I am using SQL and tableau to analyse this titanic dataset.
3. Our objective is to explore the dataset and to find out which groups of passengers had higher survival rates.

Dataset souce:
https://www.kaggle.com/datasets/vinicius150987/titanic3/data?select=titanic3.xls

## 1-Titanic Dataset Columns
Each row represents a passenger of the Titanic.

Below is the description of all the columns of the titanic dataset.

| PassengerId   |Survived            |Pclass                |Name             |Sex           |Age|SibSp|Parch|Ticket|Fare|Cabin|Embarked|Boat|Body|Home.dest|
| ------------- | -------------      | -------------        | -------------   | -------------| --|-----|---- |---|---|---|---|---|---|---|
| This column was not present in the larger dataset,so I made each row number the passenger ID for the larger dataset. This unique ID represents a passenger.   | (0 = No, 1 = Yes)  | (1st,2nd,3rd Class)  | passenger name  | Male/Female  |age|Nunmber of siblings or spouses|Number of parents or children on board|Ticket number|Passenger fare|cabin|Port of embarkment (C:Cherbourg,Q:Queenstown,S:Southampton)|Life boat number|Body number (if did not survive)|Home/destination|

## 2-Exploring the data and summary statistics
#### Total number of passengers:
| count|
|----- |
|1309|

#### Total survived (1=yes, 0=no)
|survived |count|
|---|---|
|0|809|
|1|500|

Meaning 

500 out of 1309 survived

and 809 out of 1309 did not survive.

#### Let us explore the survivors.

|sex |count|
|---|---|
|male|843|
|female|466|

We have 466 number of female passengers in out dataset, and 843 number of male passengers.

|sex |survived|count|
|---|---|---|
|female|0|127|
|female|1|339|
|male|1|161|
|male|0|682|

OR in other words
|sex |survived|count|pct|
|---|---|---|---|
|female|yes|339/466|72.7% of all female passengers|
|male|yes|161/843|19.1% of all male passengers|

##### Most of the survivors were females. 

Let us explore survivors more.
|age_bin|sex|count_survived|
|---|---|---|
|0-10	|female	|25|
|11-20	|female	|50|
|21-30	|female	|91|
|31-40	|female	|61|
|41-50	|female	|36|
|51-60	|female	|23|
|61-70	|female	|5 |
|71-80	|female	|1 |
|0-10	|male	|25|
|11-20	|male	|14|
|21-30	|male	|43|
|31-40	|male	|28|
|41-50	|male	|16|
|51-60	|male	|7 |
|61-70	|male	|1 |
|71-80	|male	|1 |
|	|male	|26|

#### Highest numbers of survivors for both sexes are in the age group of 21-30.
Females:Age group 21-30 has 91 survivors

Males:Age group 21-30 has 43 survivors
#### Is it safe to conclude that survival is related to age group?
Let us instead find $\frac{How many passengers from X survived}{number of passengers in ageGroup X}$ 

Since it is possible that most survivors were 21-30 because, most passengers were of that age.
So this fraction should give us a good measure.


## 3-Visualisation (using tableau):
#### In this section we are using the query6_approximated_age_and_approx_cabin_output.csv file to visualise, since I simplified and approximated the ages and cabin numbers to ease visualization.

##### In the visualisation below we can see that the reason why most survivors were between the age 21-30 was simply because most passengers were of that age. Hence I conclude that there is no relation between the age group of a titanic passenger and the peassenger's survival chance. 
##### With the exception being male children, under of the age 10 and under. More than half of male children of this age group survived, as opposed to males of other age groups who had much lower percentage of people who survived.
<figure>
<img src="https://private-user-images.githubusercontent.com/200813651/419466970-1e2f336b-0413-4f1e-9b59-f7a35eeb84b2.JPG?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NDExODA3NDQsIm5iZiI6MTc0MTE4MDQ0NCwicGF0aCI6Ii8yMDA4MTM2NTEvNDE5NDY2OTcwLTFlMmYzMzZiLTA0MTMtNGYxZS05YjU5LWY3YTM1ZWViODRiMi5KUEc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUwMzA1JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MDMwNVQxMzE0MDRaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0wMzNmYjViMzMzZGZjZDlkNjg0ODQzYjI1ZjI1YTY0ZjgwYmUyNjc3YTJhYjJkMDg3YzI3ODhkNDk4ZjgyMTM4JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.7bWZN5rGATqy4wtjo7sKK68okpwvOyKd_0WUTzZq7n0" alt="age" width="550" height="350" <figcaption><i>xaxis:sex,age group<br>yaxis:Number of Passengers<br>Colors:survived=Orange<br>Did not survive=Blue</i></figcaption></figure>


### Now let us see if we can see any relation between pclass,sex and age with survival of passengers.

I am going to ignore passengers who's ages are not known.

Whether a passenger survived or not seems to be related to
1. **Sex:** In every class, the percentage of female passengers who survived is higher.. So sex seems to be related to survival.
2. **pclass:** If we look at each of the classes, in the upper classes, the percentage of males who survived and the percentage of females who survived, both are higher, compared to that of lower classes.
<!--#![delete](https://github.com/user-attachments/assets/55c818bb-869f-4525-a962-7a61332de377)-->

<figure>
<img src="https://private-user-images.githubusercontent.com/200813651/419044101-55c818bb-869f-4525-a962-7a61332de377.JPG?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NDExNzcyOTMsIm5iZiI6MTc0MTE3Njk5MywicGF0aCI6Ii8yMDA4MTM2NTEvNDE5MDQ0MTAxLTU1YzgxOGJiLTg2OWYtNDUyNS1hOTYyLTdhNjEzMzJkZTM3Ny5KUEc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUwMzA1JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MDMwNVQxMjE2MzNaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1jNWUwNDJkMGY4NTllNzdlMjM2MDdiMTU3ZTVmNzE5Mjc4MWMwZmZlOGZhNzY3ODhmZjJhYzMzOWI2YzhhMjcxJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.nQCzZPGQJswcxJ33GYkczg3uQ5x-9KckDgLvaVgpLR4" alt="delete" width="550" height="350" <figcaption><i>xaxis:sex,pclass<br>yaxis:Number of Passengers</i></figcaption>
</figure>


### Is it possible that particular class or sex of passengers have higher proportion of a particular age group, which is skewing the results?
No, all classes, and, all genders have more passengers in the age bin group of 30. The age distribution is relativly same across all classes and sexes.

<!--![allpass_byage_sex_class](https://github.com/user-attachments/assets/e0fd12c0-c094-4bc8-8b4f-adc0f7d977ac)-->

<figure><img src="https://private-user-images.githubusercontent.com/200813651/419059060-e0fd12c0-c094-4bc8-8b4f-adc0f7d977ac.jpg?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NDExNzgwMjQsIm5iZiI6MTc0MTE3NzcyNCwicGF0aCI6Ii8yMDA4MTM2NTEvNDE5MDU5MDYwLWUwZmQxMmMwLWMwOTQtNGJjOC04YjRmLWFkYzBmN2Q5NzdhYy5qcGc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUwMzA1JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MDMwNVQxMjI4NDRaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0wZWMwZWZjZWNiOWFmODY5NzRkZTRmYjkyMDAwYmIwMGQwOTdiMzQ0MzE2MTY5OWI2Mjk0MDJlNDM0ZTMyZWNiJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.IqBPnU0iN6s2zQCFZyVBr_enutlnxhPcgzQ1Y_ukrsg" alt="allpass_byage_sex_class" width="550" height="350" <figcaption><i>xaxis:sex,pclass<br>yaxis:Group of Passengers as percentage of total number of passengers<br>Colors:ageGroup <br>0-10<br>.<br>.<br>.<br>71-80</i></figcaption></figure>

## 4-Conclusion
Whether a passenger survived or not seemed to be strongly related to the passenger's
1. **Sex:**
2. **PClass**

**It seems that perhaps Females and upper class passengers were given preference during the evacuation procedure**





