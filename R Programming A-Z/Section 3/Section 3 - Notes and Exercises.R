####################################################################################
######################## Section 3 - Fundamentals of R #############################
####################################################################################

####################################################################################
################################ What is a Vector ##################################
####################################################################################

# A vector is just a sequence of numbers or letters; all items have to be of the same type

# A Number vector;
# A character vector is the same format but with characters instead of numbers
#     ----  ---- ---- ---- ---- ---- ---- ---- ---- ----
#    | 12 | 233 | 54 | 38 | 71 | 16 | 2 | 64 | 100 | 3 |
#    ----  ---- ---- ---- ---- ---- ---- ---- ---- ----

x = c('A','c','8','Yes','2.3') #a character vector

####################################################################################
######################## Let's create some Vectors #################################
####################################################################################

MyFirstVector = c(3, 45, 56, 732)
MyFirstVector
is.numeric(MyFirstVector)
is.integer(MyFirstVector)
is.double(MyFirstVector)

v2 = c(3L, 12L, 243L, 0L)
v2
is.numeric(v2)
is.integer(v2)
is.double(v2)

v3 = c('a', 'b23', 'Hello', 7)
is.character(v3)
is.numeric(v3)

seq() # sequence; like ":"
rep() # replicate

# Sequence function gives more flexibility in allowing you to choose a step count; ":" doesn't allow this
seq(1,15)
1:15
seq(1:15) # this is wrong; commas go in function, colons are used when not calling a function

seq(1,15,2)
z = seq(1,15,4)

# Replicate allows you to create a vector of a single element repeated the number of times specified
# Works for numeric or character items
d = rep(3, 50)
d2 = rep("a", 25)

x = c(80,20)
y = rep(x,10)
y


####################################################################################
############################ Using the [] Brackets #################################
####################################################################################

x = c(1, 123, 534, 13, 4)
y = seq(201, 250, 11)
z = rep("Hi!", 3)

w = c('a', 'b', 'c', 'd', 'e')

# How can we access any of the elements in vector w
w[1]            # Selects the element in the 1st index
w[-1]           # Selects the whole vector minus the first element
w[-3]           # Selects the whole vector minus the third element
w[1:3]          # Selects the first, second and third elements in a list
w[3:5]
w[c(1,3,5)]     # Selects the first, third and fifth elements
w[-3:-5]        # Selects all elements of a vector, minus the elements in range 3 to 5


####################################################################################
############################ Vectorized Operations #################################
####################################################################################

# Vector Arithmetics
vector1 = c(50,34,111,7,24,631,20,4,7,21)
vector2 = c(100,2,56,12,0,65,93,10,244,1)

vector3 = vector1 + vector2

# Can do any mathmatical functions element by element
# Can even compare vectors using boolean functions
vector1 > vector2

# What happens between vectors of different lengths?
smallvector = c(50,34,111,7,24)
bigvector = c(100,2,56,12,0,65,93,10,244,1)

smallvector + bigvector
# Recycling of vectors: R will copy and paste the small vector until it matches the length of the
# big vector

# If the greater vector isn't a factor of the small vector, recycling of vectors still occurs
# but you will get a warning


####################################################################################
#################### The power of vectorized operations ############################
####################################################################################

## Part 1

x = rnorm(5)
x

# R-specific programming loop
# Iterating over the vector itself; i is assuming the values in the vector
for(i in x){
    print(i)
}

# Convention programming loop
# j is iterating over the values of 1-5
for(j in 1:5){
     print(x[j]) 
}

## Part 2

N = 10000000
a = rnorm(N)
b = rnorm(N)

# Vectorized Approach

c = a * b


# De-vectorized Approach

d = rep(NA,N)
for(i in 1:N){
    d[i] = a[i]*b[i]
}


####################################################################################
############################## Functions in R ######################################
####################################################################################

## Functions we've covered so far

rnorm()

c()
seq()
rep()

print()

is.numeric()
is.integer()
is.double()
is.character()

typeof()

sqrt()
paste()

# ? ; how R allows you to bring up help

?seq

# Numerous ways to format some functions
# Some functions have default parameters if you don't specify

rnorm(5) # default mean and sd values of 0 and 1, respectively
rnorm(5,10,8) # now mean and sd have been specifically set
rnorm(n = 5, mean = 10, sd = 8) # same as above but specifically naming the input parameters
rnorm(n=5, sd = 8) # Can also pass all, some, or no optional parameters

# Another example like rnorm()
?seq
seq(10)
seq(10,20)
seq(10,20,2)
seq(from = 10, to = 20, by = 2)







