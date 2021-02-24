# StringR

# String is a whole bunch of characters. Don't confuse a string with 
# a character vector

my_string <- "Hi, my name is Bond!"

my_vector <- c("Hi", "my", "name", "is", "Bond")

my_string

# Common Tasks you can do within a string

# 1. Identigy
# 2. Remove or replace
# 3. Edit a string

str_detect(my_vector, "Bond")
str_locate(my_vector, "Bond")
str_match(my_vector, "Bond")
str_extract(my_vector, "Bond")
str_subset(my_vector, "Bond")


# Explanation on str_detect()
str_detect(my_vector, "Bond")
# We get Boolean of True and False values


# Explanation on str_match
str_match(my_vector, "Bond")
# This is a character matrix with NA or the pattern

# Explanation on str_extract()
str_extract(my_vector, "Bond")
# Character vector

# Explanation on str_locate()
my_vector <- c("Hi", "my", "name", "is", "Bond", "James Bond")
str_locate(my_vector, "Bond")
# It returns dataframe with two variables start and end
# How to read the output:
# On the 5th element from 1st character to 4th character we see our 
# pattern
# On the 6th element see our pattern from the 7th character to the 
# 10th character


# Explanation on str_substet()
str_subset(my_vector, "Bond")
# character vector containing the elements that it pulled out 
# from the original vector

# Explanation on str_replace() -- replace/ remove patterns 
str_replace(my_vector, "Bond", replacement = "Franco")



# Ask yourself: What is the output?

str_to_lower(my_string)
str_to_upper(my_string)


# Look through stringR cheatsheet

emails <- read.csv("~/Desktop/Repositories/Regex| Regular Expressions/emails.csv")

str_detect(emails$text, ":")

str_pad("I like R", width = 20, side = "left") 

str_c()

cars <- Auto

str_glue("this{mean(cars$mpg)}", .sep=":", "is the mpg mean")

# {} R should compute the function inside the curly bracket
# Anything inside the {} can be calculated in the R

str_glue("the car model {cars$name} has horserpower of {mean(cars$horsepower)}") %>% 
  as.data.frame() %>% 
  view()





