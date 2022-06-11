# This lab introduces R and RStudio
library (datasets)
data(iris)
View(iris)

# Find how many different species there are present in the data set
unique(iris$Species)

# Install GGally
install.packages("GGally", repos = "https://cran.r-project.org", type= "source")


library(datasets)
# Load Data
data(mtcars)
# View first 5 rows
head(mtcars, 5)

# Get information about the variables
?mtcars

# Load ggplot package
library(ggplot2)
# create a scatterplot of displacement (disp) and miles per gallon (mpg)
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()

# Add a title
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon")

# Change axis name
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon") + labs(x = "Displacement", y = "Miles per Gallon")

# Make vs a factor
mtcars$vs <- as.factor(mtcars$vs)
# create boxplot of the distribution for v-shaped and straight Engine
ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()

# Add color to the boxplots
ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none")

# Create the histogram of weight wt
ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)

