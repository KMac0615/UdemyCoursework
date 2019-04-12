####################################################################################
############################# Section 3 Homework ###################################
####################################################################################

# Financial Statement Analysis

# Given two vectors (monthly revenue and monthly expenses), calculate the following metrics:
# (1) profit for each month
# (2) profit after tax for each month (the tax rate is 30%)
# (3) profit margin for each month - equals to profit after tax divided by revenue
# (4) good months - where the profit after tax was greater than the mean for the year
# (5) bad months - where the profit after tax was less than the mean for the year
# (6) the best month - where the profit after tax was max for the year
# (7) the worst month - where the profit after tax was min for the year

# Notes
# All results should be presented as vectors
# Results for dollar values need to be calculated with $0.01 precision, but need to be presented in 
#   units of $1,000 with no decimal points
# Results for the profit margin ratio need to be presented in units of % with no decimal points
# Tax for any given month can be negative

# Task 1
profit = revenue - expenses
profit

# Task 2
Tax = round(profit * 0.3,2)
Tax
PAT = profit - Tax
PAT

# Task 3
margin = round((PAT/revenue) * 100,0)
margin

# Task 4
mean = mean(PAT)
good_months = PAT > mean
good_months

# Task 5
bad_months = !good_months
bad_months

# Task 6
max_PAT = max(PAT)
best_month = PAT == max_PAT

# Task 7
min_PAT = min(PAT)
worst_month = PAT == min_PAT
