####################################################################################
############################# Section 2 Homework ###################################
####################################################################################

# The Law of Large Numbers
# As n grows and approaches infinity, the average of the measured values converges to the expected value

# Examples:
# 10 coin tosses:   7/3   70%/30%
# 100 coin tosses:  52/48   52%/48%
# 1000 coin tosses: 502/498 50.2%/49.8%

# Can see in above example, the more coin tosses, the closer to theoretical mean

# Normal Distribution
# 68.2% of values fall within 1 standard deviation of the mean
# 95.4% fall within 2 standard deviations of the mean
# 99.6% fall within 3 standard deviations of the mean

# Homework will use R to prove that the LLN works
# Hint #1 for(i in rnorm(100){#...})

N = 10000000
counter = 0

for(i in rnorm(N)){
    if( i > -1  & i < 1  ){
        counter =  counter + 1  
    }
}
answer = counter / N
answer













