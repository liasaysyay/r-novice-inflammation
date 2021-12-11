package(readr)
library(readr)

data01 <- read.csv("data/data/inflammation-01.csv", header = FALSE, sep = ',')

# Q1A: What is the output of this command? What is this type of data class?
class(data01)

# Q1B: What is the output of this command? What does it mean?
dim(data01)

# Extract dataset rows and columns
# row 30, column 20
data01[30,20]

# combine function, c, to select multiple rows/columns
data01[c(1,3,5), c(10,20)]

#Q2A: How do we select the first ten columns of values for the first four rows?
data01[1:4,1:10]

#Q2B: How do we select the first ten columns of rows 5 to 10?
data01[5:10, 1:10]

# Addressing columns by name
# first row, all of the columns
patient_1 <- data01[1, ]
# max inflammation for patient 1
max(patient_1)

#Q3A:What is the output of this command? -> 18
#Q3B: What is the value if you change max to sum? -> 218
sum(patient_1)

# Performing statistics on the data
# max inflammation for patient 1
max(data01[1, ])

#Q4:What command will allow you to find the minimum inflammation for
# patient 2 on day 7.  Type this into your R script.  What is the value? -> 3
min(data01[2,7])

# Forcing R to read data as numeric
max(data01[1,])
mean(data01[1,])

#Q5: What value is returned by this command? -> 5.45
mean(as.numeric(data01[1,]))

# Operations across margins of the dataframe
# average of all rows (MARGIN=1)
avg_patient_inflammation <- apply(data01, 1, mean)
# average of all columns (MARGIN=2)
avg_daily_inflammation <- apply(data01, 2, mean)

# Plotting the data
plot(avg_daily_inflammation)

#Q6: What does this plot look like?  Why do you think it looks this way?
max_daily_inflammation <- apply(data01, 2, max)
plot(max_daily_inflammation)

#Q7: What happens when you plot the min day inflammation?
# Do you think this result is correct?  Why or why not?
min_day_inflammation <- apply(data01, 2, min)
plot(min_day_inflammation)

