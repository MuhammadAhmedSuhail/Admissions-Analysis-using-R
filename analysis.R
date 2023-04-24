library(readr)
library(dplyr)
library(stringr)

dataset <- read_csv("admission.csv",skip = 1)

#Question 1
print("Number of Observations")
print(nrow(dataset))

#Question 2

print(ncol(dataset))

var <- sapply(colnames(dataset), function(x) class(dataset[[x]]))

discrete <- sum(str_count(var,"numeric"))
categorical <- sum(str_count(var,"character"))

print(c("Categorical Values are: " , categorical))
print(c("Discrete Values are: ", discrete))

#var variables shows that only numeric and character type is present thus 
#no other features are involved.

#Question 3

total_nan <- sum(sapply(dataset, function(x) { sum(is.na(x))} ))

highest_nan <- max(sapply(dataset, function(x) { sum(is.na(x))} ))

na_count <-sapply(dataset, function(y) sum(length(which(is.na(y)))))

which(na_count == highest_nan)

barplot(na_count,las = 2)

#By observing the barplot we see that there is a large number of NAN values 
#in campus preference , SAT Scores and NTS Scores

# Question 4

localstu <- subset(dataset,( dataset$Current == 'Islamabad' |  dataset$Current == 'Rawalpindi'))
outsidestu <- subset(dataset,( dataset$Current != 'Islamabad' &  dataset$Current != 'Rawalpindi'))

outside_cities <- sort(unique(outsidestu$Current))
outside_cities_count <- table(outsidestu$Current)

local_cities_count <- nrow(localstu)

barplot(outside_cities_count,names.arg = outside_cities,main = "Outside Cities",las = 2)
barplot(local_cities_count,names.arg = "Local",main = "Local")

df <- data.frame(Cities = "Local",Count = local_cities_count)

df.n <- data.frame(Count = outside_cities_count)
names(df.n)[names(df.n) == 'Count.Var1'] <- "Cities"
names(df.n)[names(df.n) == 'Count.Freq'] <- "Count"

df.new <- rbind(df,df.n)

barplot(df.new$Count,names.arg = df.new$Cities,las = 2,main = "Comparison of Local and Outside Students")

#Majority of Students are from Lahore then Local and then Karachi

#Question 5

barplot(outside_cities_count,las = 2,main = "Outside Student Population")
abline(v = median(outside_cities_count), col = "blue")     #median
abline(v = quantile(outside_cities_count)[2], col = "red") #Q1
abline(h = mean(outside_cities_count), col = "green")       #Average

#Median is more close to Q4 due to outliers

       
#Question 6

all_boards <- table(dataset$BOARD_HSSC)

df2 <- data.frame(all_boards)
names(df2)[names(df2) == 'Var1'] <- "Board"
df2 <- df2[order(df2$Freq,decreasing = TRUE),]

marks <- vector(mode = "list", length = 0)

top5boards <- as.list(as.vector(head(df2,5)[,1]))

for ( x in top5boards )
{
  temp <- subset(dataset,dataset$BOARD_HSSC == x)
  marks <- append(marks,mean(temp$HSSC_OBT, na.rm = TRUE))
}

marks <- as.numeric(marks)

barplot(marks,names.arg = top5boards,main = "HSSC marks in the 5 most frequently occurring boards",ylab = "Marks")

#Federal scored the most followed by Karachi then Lahore

#Question 7
#Part 1

df3 <- subset(dataset,dataset$HSSC_OBT >= 0)

stu_id <- as.list(subset(df3,df3$HSSC_OBT == max(df3$HSSC_OBT))[1])

#Part 2

board <- as.list(subset(df3,df3$HSSC_OBT == max(df3$HSSC_OBT))[20])

#Part 3

df4 <- subset(dataset,dataset$SSC_OBT >= 0)

city <- as.list(subset(df4,df4$SSC_OBT == min(df4$SSC_OBT))[3])

#Part 4

Largest_App <- as.list(as.vector(head(df2$Board,1)))
