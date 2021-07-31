#Functions without arguments
fun1=function(){
  print("Have a nice day!!!")
}

fun1()
fun1()
fun1()
fun1()
fun1()
fun1()
fun1()
fun1()

fun2=function(){
  a=20
  b=30
  print(a+b)
}

fun2()
fun2()
fun2()
fun2()
fun2()
fun2()
fun2()
fun2()

#Functions with arguments
fun3=function(a,b){
  print(a+b)
}

fun3(10,20)
fun3(30,50)
fun3(4,8)

#Functions with return

fun3=function(a,b){
  print(a+b)
}

fun3(10,20)+100

fun4=function(a,b){
  return(a+b)
}

fun4(10,20)+100
fun4(fun4(10,20),30)

#functions inside functions
fun5=function(a,b){
  return(a+b)
}

fun6=function(a,b,c){
  return(c*fun5(a,b))
}

fun6(2,3,5)

#Scope of the variables in functions

x=10

fun7=function(){
  x=20
  print(x)
}

print(x)
fun7()
print(x) #The original global x has not been changed


x=10

fun7=function(){
  assign("x",20,envir = .GlobalEnv)
  print(x)
}

print(x)
fun7()
print(x) #The original global x has been changed


#Anonymous Functions
fun=function(x) 2*x
fun(10)

(function(x) 2*x)(10)

(function(x,y,z) (x+y)*z)(2,3,2)

#lapply & sapply function with vectors

a=c(20,15,10,30)

fun=function(x){
  return(2*x)
}

lapply(a,fun)
sapply(a,fun)


b=c(10,20,30,40,50)
k=sapply(b, function(x) 2*x+5) #Hera an anonymous function has been used
k

#apply function with data frames
df=data.frame(Age=c(23,33,32),marks=c(78,76,90))
df

apply(df, 1, mean) #Row wise
apply(df, 2, mean) #Column wise

#User defined functions
fun=function(y){
  return(sum(y)*2)
}

apply(df,2,fun)

#With anonymous functions
apply(df, 2, function(x) x**2)
apply(df, 2, function(x) mean(x)/sd(x))


#Libraries

library(dplyr) #For data manipulation
library(randomForest) #For machine learning
library(ggplot2) #For visualization
library(shiny) #Web framework
require(dplyr) #Another way of accessing packages/ libraries

#install.packages("dplyr") #Install unavailable libraries

#Inbuilt data sets

data("iris")
iris
help("iris") #To get the data description
?iris

data("diamonds")
diamonds

library(MASS)
data("Boston")
Boston
df=Boston
head(df)
