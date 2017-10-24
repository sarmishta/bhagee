data = iris

#Checking the null values in data sheet i.e missing value
sum(is.na(data()))

#making one value to null

data[1,4]=NA

data[1,4]

#used to find the missing values in colomns {{2} for colomn,{1} for row}
apply(data,2,function(x){sum(is.na(x))})


#Helps in removing the rows which does not have values after comma represents no of output coloms you want
data1 = data[complete.cases(data),]

data2 = data[complete.cases(data),c(1:2)]

apply(data,2,function(x){sum(is.na(x))})

beta =iris

#implimentation of mean,median,knn

data$Petal.Width[is.na(data$petal.width)] = median(data$petal.width,na.rm = TRUE)


