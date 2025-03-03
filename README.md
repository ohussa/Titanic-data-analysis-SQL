# DataAnalysis
1. This is my first data analysis project.
2. I am using SQL to analyse this titanic dataset.
3. Our objective is to explore the dataset and see according to find out which groups of passengers had higher survival rate.

## Titanic Dataset Columns
Each row represents a passenger of the Titanic.

Below is the description of all the columns of the titanic dataset.

| PassengerId   |Survived            |Pclass                |Name             |Sex           |Age|SibSp|Parch|Ticket|Fare|Cabin|Embarked|Boat|Body|Home.dest|
| ------------- | -------------      | -------------        | -------------   | -------------| --|-----|---- |---|---|---|---|---|---|---|
| This column was not present in the larger dataset,so I made each row number the passenger ID for the larger dataset. This unique ID represents a passenger.   | (0 = No, 1 = Yes)  | (1st,2nd,3rd Class)  | passenger name  | Male/Female  |age|Nunmber of siblings or spouses|Number of parents or children on board|Ticket number|Passenger fare|cabin|Port of embarkment (C:Cherbourg,Q:Queenstown,S:Southampton)|Life boat number|Body number (if did not survive)|Home/destination|

## Exploring the data
Total number of passengers:
| count|
|----- |
|1309|

Total survived (1=yes, 0=no)
|survived |count|
|---|---|
|0|809|
|1|500|

Meaning 

500 out of 1309 survived

and 809 out of 1309 did not survive.

