#Size of strings
msg="Hello how are you?"
nchar(msg)
length(msg)

msgs=c("Good morning","Good afternoon","Good evening","Good night")
nchar(msgs)
length(msgs)

#Set the upper & lower cases
msg="Today Is A Beautiful Day"
tolower(msg)
toupper(msg)

msgs=c("DOG","cat","Man","COW","rat","Spider")
tolower(msgs)
toupper(msgs)

#Get a sub string of a string
news="Today is a rainy day.Heavy thunderstorms can be expected."
nchar(news)
sub_news1=substr(news,1,21)
sub_news2=substr(news,22,58)
sub_news1
sub_news2

#Concatenating strings
st1="Dog is running."
st2="Cat is sleeping."

st3=paste(st1,st2)
st3

st4=paste(st1,st2,sep = ",")
st4

cat(st1,st2) #This is not returning the output. Just printing
cat(st1,st2,sep="/")

#Embedding variables to the strings

age=27
st=paste("I am ",age," years old")
st

cat("I am ",age," years old") #Just printing

age=c(23,32,40,15,50)
st=paste("I am ",age," years old")
st
st[1]
st[3]


#Print strings with variables (Another technique)
name="Sam"
age=27

msg=sprintf("%s is %d years old",name,age) #%d for numerical values, %s for string values
msg

mark=readline("Enter your maths mark: ")
result=sprintf("You have %sed the exam",(function(m) ifelse(m>=50,"Pass","Fail"))(mark))
result

#Splitting strings
msg="Have a nice day."
msgv=strsplit(msg," ")
msgv
msgv[[1]][2]

msg="My favorite places are home,office,gym,university,studio and garden"
msgv=strsplit(msg,",")
msgv
msgv[[1]][3]

#Escaping characters
print("Today is a beautiful day.\nBut it may rain in the evening")
cat("Today is a beautiful day.\nBut it may rain in the evening") #New line character

cat("Today is a beautiful day.\tBut it may rain in the evening") #tab character

cat("Today is a beautiful d\bay.But it may rain in the evening") #back space character

print("Saman says,'Today is a good day'")
cat("Saman says,'Today is a good day'")

print('Saman says,"Today is a good day"')
cat('Saman says,"Today is a good day"')

print("Saman says,\"Today is a good day\"") #double quotations
cat("Saman says,\"Today is a good day\"")

print('Saman says,\'Today is a good day\'') #single quotations
cat('Saman says,\'Today is a good day\'')

#Patterns in Strings

#Inbuilt functions in Base R
#Pattern matching & replacement
stv=c("Dog","Cat","Dog", "Cat is sleeping","Dog is running","dog is fighting with cat")

grep("Dog",stv)
grep("Dog",stv,ignore.case = TRUE)
grep("Dog",stv,ignore.case = T,invert = T)

grepl("Dog",stv)
grepl("Dog",stv,ignore.case = TRUE)


st="Today is a beautiful day"
stv=c("Dog","Cat","Dog", "Cat is sleeping","Dog is running","dog is fighting with cat")
stv2=c("Dog","Cat","Dog", "Cat is sleeping","Dog is running","Dog is fighting with cat because dog is angry")

sub("Today is","Yesterday was",st)
sub("Dog","Cow",stv)
sub("Dog","Cow",stv,ignore.case = T)

gsub("Today is","Yesterday was",st)
gsub("Dog","Cow",stv)
gsub("Dog","Cow",stv,ignore.case = T)

sub("Dog","Cow",stv2,ignore.case = T)
gsub("Dog","Cow",stv2,ignore.case = T)

news="Good morning. Weather forecast says that there will no sign of raining in the morning.But will be in the evening"

regexpr("morning",news,ignore.case = T)
regexec("evening",news,ignore.case = T)
gregexpr("morning",news,ignore.case = T)
