# DataAnalysis
1. This is my first data analysis project.
2. I am using SQL to analyse this titanic dataset.
3. Our objective is to explore the dataset and see according to find out which groups of passengers had higher survival rate.

Dataset souce:
https://www.kaggle.com/datasets/vinicius150987/titanic3/data?select=titanic3.xls

## Titanic Dataset Columns
Each row represents a passenger of the Titanic.

Below is the description of all the columns of the titanic dataset.

| PassengerId   |Survived            |Pclass                |Name             |Sex           |Age|SibSp|Parch|Ticket|Fare|Cabin|Embarked|Boat|Body|Home.dest|
| ------------- | -------------      | -------------        | -------------   | -------------| --|-----|---- |---|---|---|---|---|---|---|
| This column was not present in the larger dataset,so I made each row number the passenger ID for the larger dataset. This unique ID represents a passenger.   | (0 = No, 1 = Yes)  | (1st,2nd,3rd Class)  | passenger name  | Male/Female  |age|Nunmber of siblings or spouses|Number of parents or children on board|Ticket number|Passenger fare|cabin|Port of embarkment (C:Cherbourg,Q:Queenstown,S:Southampton)|Life boat number|Body number (if did not survive)|Home/destination|

## Exploring the data and summary statistics
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

#### Now let us see if we can see any relation between pclass and cabin with survival of passengers.


