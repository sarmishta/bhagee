beta = iris

#Checking the null values in data sheet i.e missing value
sum(is.na(beta()))

sum(is.na(beta))

#making one value to null

beta[1,4]

sum(is.na(beta))

#used to find the missing values in colomns {{2} for colomn,{1} for row}
apply(beta,2,function(x){sum(is.na(x))})


#Helps in removing the rows which does not have values after comma represents no of output coloms you want
beta1 = beta[complete.cases(beta),]


#implimentation of mean,median,knn

beta$Petal.Width[is.na(beta$Petal.Width)] = median(beta$Petal.Width,na.rm = TRUE)

beta[1,4]=NA
sum(is.na(beta))

beta$Petal.Width[is.na(beta$Petal.Width)] = mean(beta$Petal.Width,na.rm = TRUE)

library(dmwr)

beta[1,4]=NA
beta =knnImputation(beta)

library(VIM)

beta =KNN(beta)

library(DMwR)

beta = knnimputation(beta)
