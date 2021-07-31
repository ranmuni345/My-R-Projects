#Ctrl+R or Ctrl+Enter for execution
#Ctrl+l for cleaning the console

#Print any output
print(200)
print("Dog")

#Mathematical operations
print(1+2)
print(2*3)
print(4/2)
print(4^2)
print(4**2)
print(5%%2)
print(5%/%2) #Integer division

#Print function is not compulsory in R Studio
20+10

#R comments
#This is a comment. Comment is started with "#"

#Relational operations
20>10
30<20
50>=30
20<=40
10==10
10!=10

#Logical operations
20>10 && 30<=50
20<10 || 20==20
!10==10
!(20<10 || 20==20)
!10<5

#R variables
val1=20
val1

x=10
y=20
x+y
x>y

z=2*x+y
z


#Checking what are the variables in the R environment
ls()

#Remove variables
rm(x)
ls()

#Remove all variables from the R environment
rm(list=ls())
ls()

#Mathematical operations with functions
x=10
y=20
sum(x,y) #Summation

abs(-20) #Absolute value
sqrt(25) #Square Root

sign(-100) #Sign of the value
sign(100)

round(3.245) #Rounding

identical(2,2) #Equality
identical(4,3)

x=10
rep(x,5) #Repeats the value

log(10) #Log values
log2(15)
log10(30)
exp(5) #Exponential function

sin(20) #Trigonometric functions
cos(20)
tan(20)

round(10.3345)
round(10.35,1)

#Checking any inbuilt function
help(log)
?log
args(log)
example(log)

#Primitive data types
#Checking the type of the data
class(1.23)
class(12)
class(2L)
class("Cat")
class(TRUE)
class(FALSE)
class(T)
class(23+3i)

x=20
class(x)

#Verifying the type of the data
is.numeric(12.234)
is.numeric("Dog")
is.character("Dog")
is.character(12.223)
is.logical("Man")
is.logical(TRUE)

x=20
is.character(x)

#Casting data types
x=12
y=as.character(x)
y
class(y)


x="12"
y=as.numeric(x)
y
class(y)

x="Cat"
y=as.numeric(x)
y
class(y) #Missing values are considered as numerics

x=T
y=as.numeric(x)
y
class(y)

x=F
y=as.numeric(x)
y
class(y)

x=1
y=as.logical(x)
y
class(y)

x=0
y=as.logical(x)
y
class(y)

x=23
y=as.logical(x)
y
class(y)

x="TRUE"
y=as.logical(x)
y
class(y)

x="CAT"
y=as.logical(x)
y
class(y)

#User inputs can be assigned to the variables
name=readline(prompt="Enter name: ")
age=readline(prompt="Enter age: ")

name
age #Numeric inputs are also given as characters

# Cast the character type into numeric
age=as.numeric(age)
age