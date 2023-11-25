##ДЗ №2


#1
v1 = c("one", "two", "three")
v2 = c(1:5)

#2
length(v2)
v2[1]
v2[1:4]

#3
v3 <- c(v1,v2)
v3

#4
mean(v2)

#5
wow <-function(x){
  abc <- x*10
  return(abc)
}

#6  
r1 <- wow(v2)
r1


##Работа с матрицами

#1
m0 <- rbind(c(10,11,12),c(13,14,15))
m0

vm1 = 1:9
m1 <- matrix(vm1, nrow = 3, ncol = 3)
m1

vm2 = 10:19

m2 <- matrix(vm2, nrow = 3, ncol=3, byrow = TRUE)
m2

#2
m1[,1]
m1[2,]

#3
m2[2:2]


## Работа с DF

df <- read.csv("ДЗ2_vgsales.csv")
head(df)
print(nrow(df))
view(df)

df[1:10,]
str(df)
summary(df)

