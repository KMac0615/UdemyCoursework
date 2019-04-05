####################################################################################
################################ Types of Variables ################################
####################################################################################

## 5 main datatypes (called atomic data types) ##

# Integer
x <- 2L
x
typeof(x)
# RStudio automatically stores numbers as doubles unless you specify L at the end
x2 <- 2
x2
typeof(x2)


# Double
y <- 2.5
y
typeof(y)

# Complex
z <- 3 + 2i
z
typeof(z)

#  Character
a <- 'h'
a
typeof(a)

# Logical
q <- T
q
typeof(q)


####################################################################################
################################# Using Variables ##################################
####################################################################################

A <- 10
B <- 5

C <- A + B
C

var1 <- 2.5
var2 <- 4

result <- var1 / var2
result

answer <- sqrt(var2)
answer

greeting = "Hello"
name = "Bob"

message = paste(greeting,name)
message


####################################################################################
########################### Logical Variables and Operators ########################
####################################################################################

# TRUE (T) or FALSE (F)

4 < 5
10 > 100
4 == 5

# equal to ==
# not equal to !=
# Less than <
# greater than >
# less than or equal to <=
# greater than or equal to >=
# not !
# or |
# and &
# to check if it's true isTRUE(variable)

result = 4 < 5
result
typeof(result)

result2 = !TRUE
result2

result3 = !(5 > 1)
result3

result | result2
result & result2

isTRUE(result)
isTRUE(result2)


####################################################################################
################################ The "While" Loop ##################################
####################################################################################

# Standard format: while(logical expression){body of the loop/what gets executed if logical expression is true}

while(T){
    print("Hello")
}

# set a counter first; tell the program to print the value of counter plus one until counter = 12, at which time the program will equal false and not print)
counter = 1
while(counter < 12){
    print(counter)
    counter = counter + 1
}


####################################################################################
################################# Using the Console ################################
####################################################################################

# Technically, you could use R by itself. RStudio is a GUI that makes it easier to write code and save files
# You can even skip using an R script and just write directly into the consoley = 4
# Problem is, your code isn't being tracked and thus isn't reproducible


####################################################################################
################################# The "For" Loop ###################################
####################################################################################

counter = 1
while(counter < 12){
    print(counter)
    counter = counter + 1
}

# Format for for loop is for(iterations){action to be completed the number of iterations specified}
for(i in  1:5){
    print("Hello R")
}

# 1:5 is a vector
# In above, saying i has to iterate over all of the values in the vector 1:5; then body is saying print "Hello R" that number of iterations

1:5


####################################################################################
############################# The "If" Statement ###################################
####################################################################################

# ---- -2 ---- -1 ---- 0 ---- 1 ---- 2 ----

# Generated a random number
# rnorm generates a set of random numbers that are normally distributed

x = rnorm(1)
x


# Format of If statement is if(logical expression){action to be completed}
# Different from while loop as it only runs once

rm(answer)
x = rnorm(1)
if(x > 1){
    answer = "Greater than 1"
} else {
    
    if(x >= -1){
        answer = "Between -1 and 1"
    } else{
        answer = "Less than -1"
    }
} 

# Nested statements like above are not best practice; better to chain statements

rm(answer)
x = rnorm(1)
if(x > 1){
    answer = "Greater than 1"
} else if(x >= -1){
    answer = "Between -1 and 1"
} else{
    answer = "Less than -1"
}


