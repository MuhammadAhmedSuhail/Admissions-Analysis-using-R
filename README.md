# Admissions Analysis using R

## Project Description
This project uses R to analyze the actual data of NUCES 2018 admissions. Each row corresponds to one student. The dataset includes various features such as HSSC marks, Matric marks, city of residence, and more. The goal of this project is to answer several questions about the dataset and gain insights into the admissions process.

## Approach
### Data Preparation
I began by loading the dataset into R and conducting exploratory data analysis to understand the structure and distribution of the data. I then cleaned and preprocess the data as necessary, including handling missing values, transforming variables, and creating new variables as needed.

### Data Exploration
I explored the data using the following functions: str(), summary(), and table(). Through this exploration, I gained an understanding of the structure and contents of the data. I learned that there were 26,805 observations and 44 features in the dataset. There were 25 categorical features and 19 discrete features.

## Data Analysis
### How many missing values are in the dataset?

![image](https://user-images.githubusercontent.com/72251313/234000928-0ba5701d-da3d-472d-894d-c25a5b5c311e.png)

By observing the barplot we see that there is a large number of NAN values in campus preference , SAT Scores and NTS Scores

### Are there more local student (ISB+RWP) or outside student recorded? and what are the proportions of the city of the residences?

![image](https://user-images.githubusercontent.com/72251313/234002127-d1eaaf88-7a6f-4f7f-879c-a89584da27c7.png)

Majority of Students who applied at FAST are from Lahore then they are from local areas and the third common city is Karachi

### What is the average outside student population? What is the median? What are the deciles?

![image](https://user-images.githubusercontent.com/72251313/234002924-aee6d8ab-a007-44eb-9e47-71a85766873f.png)

**Blue** Line represents the Median.
**Red** Line Represents the First Quarter ( Q1 )
**Green** Line Represents the Average

The Unusual Scenario is that the **median** is more close to Q4 due to outliers.

### Compare HSSC marks graphically in the 5 most frequently occurring boards cities.

![image](https://user-images.githubusercontent.com/72251313/234003695-7cecbcc1-4db4-485d-bfd3-4e7a8868a527.png)

Federal Board scored the most followed by Karachi Board then Lahore Board

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites
You will need to have R installed on your machine. You can download the latest version of [R](https://cran.r-project.org/bin/windows/base/) here.
</br>
You will also need to have R Studio on your machine. You can download the latest version of [R Studio](https://posit.co/download/rstudio-desktop/) here.

### Installing
Clone this repository onto your local machine.
```
git clone https://github.com/MuhammadAhmedSuhail/Admissions-Analysis-using-R.git
```
Run `analysis.r` on RStudio to analyze the data

## Result
Through my analysis, I found that the majority of the students were from Lahore. I also found that the HSSC marks were highest for students from the Federal Board. Overall, the data provides useful insights into the admissions process for NUCES in 2018, and these insights can be used to inform future admissions decisions.

## Author:
- Muhammad Ahmed Suhail

## Acknowledgments:
- This project was completed as an assignment for **Advanced Statistics** at FAST - NUCES Islamabad.
