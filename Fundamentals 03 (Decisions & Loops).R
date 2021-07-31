#Decision making
#if condition
x=20

if(x>10){
  print("Success!!!")
}

if(TRUE){
  print("Statement is True")
}

#Nothing will be printed
if(FALSE){
  print("Statement is True")
}

x=5

if(!x>10){
  print("Success!!!")
}

x=20

if(x>=0 && x<=30){
  print("x is in the correct region")
}


x=45

if(x<=0 || x>=30){
  print("x is not in the correct region")
}


#if-else conditions

x=15

if(x>=20){
  print("The value is greater than or equal 20")
}else{
  print("The value is less than 20")
}

y=20

if(y%%2==0){
  print("y is an even value")
}else{
  print("y is an odd value")
}


un=readline(prompt="Enter the username: ")
pw=readline(prompt="Enter the password: ")

if(un=="Sam" && pw=="xyz123"){
  print("You have logged.")
}else{
  print("Please check your username or password.")
}

#Inline if-else
x=18
ifelse(x>=20,"Success","Failure")

data=read.csv("D:\\Workshops\\R Programming for Data Science Workshop\\Part 01 - Fundamentals of R Programming\\Datasets\\default.CSV")
head(data)

data$Exp_Level=ifelse(data$Work.Exp>=15,"High","Low")
head(data)

#if-else if-else
mark=67

if(mark>=80){
  grade="A"
}else if(mark>=65){
  grade="B"
}else if(mark>=50){
  grade="C"
}else{
  grade="F"
}

grade


mark=readline(prompt = "Enter the mark:")

if(mark<50){
  result="Repeat"
}else{
  if(mark>=80){
    result="A"
  }else if(mark>=65){
    result="B"
  }else{
    result="C"
  }
}

result

mark=90
grade=ifelse(mark>=80,"A",ifelse(mark>=65,"B",ifelse(mark>=50,"C","F")))
grade


#Loops
#for loop

a=c(12,22,23,34,45,56)

for(i in a){
  print(i)
}

a=c(12,22,23,34,45,56)

for(i in a){
  cat(i," ") #This will print everything in a single line
}


for(k in 1:10){
  print(2*k)
}


v1=c(12,22,23,34,45,56)
v2=c()

for(h in v1){
  v2=append(v2,3*h)
}

v2


vals=c(11,22,23,34,44,45,56,32,31)

for(i in vals){
  if(i%%2==0){
    print(i)
  }
}

marks=c(67,23,78,89,45,77,90,56,67)
result=c()

for(m in marks){
  if(m>=50){
    result=c(result,"Pass")
  }else{
    result=c(result,"Fail")
  }
}

result



marks=c(67,23,78,89,45,77,90,56,67)
result=c()

for(m in marks){
  result=append(result,ifelse(m>=50,"Pass","Fail"))
}

result

marks=c(67,23,78,89,45,77,90,56,67)
grade=c()

for(mark in marks){
  grade=append(grade,ifelse(mark>=80,"A",ifelse(mark>=65,"B",ifelse(mark>=50,"C","F"))))
}

grade

#Break statement
vec=c(12,22,23,34,56,54,44,32,33,45,67)

for(k in vec){
  if(k>=50){
    break
  }
  print(k)
}


#Next statement
vec=c(12,22,23,34,56,54,44,32,33,45,67)

for(k in vec){
  if(k>=50){
    next
  }
  print(k)
}


vec=c(12,22,23,34,56,54,44,32,33,45,67)
vec_even=c()

for(k in vec){
  if(k%%2!=0){
    next
  }
  
  vec_even=c(vec_even,k)
}

vec_even

#while loop
x=1 
while(x<11){
  print(2*x) 
  x=x+1
}


x=10
while(x>1){
  print(2*x) 
  x=x-1
}

while(TRUE){
  print("Hello. How are you!!")
}


while(FALSE){
  print("Hello. How are you!!")
}


pin=12345678
check=T
while(check){
  entered_val=readline(prompt="Please enter your car pin number:")
  epin=as.numeric(entered_val)
  if(epin==pin){
    check=F
    print("You have accessed to the ATM machine")
  }
}


#Repeat loop
x=1
repeat{
  print(x)
  x=x+1
  if(x>=10){
    break
  }
  
}