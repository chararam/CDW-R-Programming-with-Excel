# Advanced Introduction to R Programming with Excel Integration

# Set your working Directory
setwd('/Users/chararam/Documents/GitHub/CDW-R-Programming-with-Excel')

# Part 1: Setting Up

# Install and load necessary packages

# 'dplyr' is a package for data manipulation. It provides functions for manipulating data frames in a concise, readable way.
install.packages("dplyr")
library(dplyr)

# 'ggplot2' is a package for data visualization. It's based on the grammar of graphics and allows for building complex plots in a structured manner.
install.packages("ggplot2")
library(ggplot2)

# Part 2: Reading and Combining Data from CSV Files

# Reading CSV files - replace with the paths to your actual CSV files
# 'read.csv' is a function in R's base package for reading CSV files into data frames.
sales_data <- read.csv("https://raw.githubusercontent.com/netdevmike/CDW-R-Programming-with-Excel/main/data/Sales_Data.csv")
customer_data <- read.csv("https://raw.githubusercontent.com/netdevmike/CDW-R-Programming-with-Excel/main/data/Customer_Data.csv")

# Print the data to understand its structure
print(sales_data)
print(customer_data)

# Combining the data - assuming both datasets have a common column 'CustomerID'
# The 'merge' function (from base R) is used here to join two data frames based on a common key.
combined_data <- merge(customer_data, sales_data, by = "CustomerID")
print("Combined Data:")
print(combined_data)

# Part 3: Data Analysis and Visualization

# Analysis 1: Sales Distribution by Age Group
# The 'cut' function is used to divide the age data into discrete intervals or bins.
AgeGroup <- cut(combined_data$Age, breaks=c(20,30,40,50), labels=c("20s", "30s", "40s"))

# The 'aggregate' function is used to summarize the sales data by these age groups.
sales_by_age_group <- aggregate(Sales ~ AgeGroup, data = combined_data, sum)
print("Sales by Age Group:")
print(sales_by_age_group)

# Visualization 1: Bar Plot of Sales by Age Group
# Using 'ggplot' from the ggplot2 package to create a bar plot.
# 'ggplot': Initiates a ggplot graph. 'aes' defines aesthetic mappings (here, x and y axes).
# 'geom_bar': Adds bar geometry. 'stat = "identity"' tells it to use the actual 'y' values for bar heights.
# 'theme_minimal': Applies a minimalistic theme to the graph for cleaner presentation.
# 'labs': Sets labels for the graph, including title, x-axis, and y-axis.
ggplot(sales_by_age_group, aes(x = AgeGroup, y = Sales)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_minimal() +
  labs(title = "Sales Distribution by Age Group", x = "Age Group", y = "Sales")

# Analysis 2: Average Sales per Month
# Using 'aggregate' to calculate the average sales for each month.
avg_sales_per_month <- aggregate(Sales ~ Month, data = combined_data, mean)
print("Average Sales per Month:")
print(avg_sales_per_month)

# Visualization 2: Line Graph of Average Sales per Month
# Creating a line graph using 'ggplot' to visualize the data.
# 'geom_line': Adds a line plot. The 'color' attribute sets the line color.
# 'geom_point': Adds points to the line plot, with 'color' and 'size' defining their appearance.
# The rest of the functions ('theme_minimal', 'labs') serve the same purpose as described above.
ggplot(avg_sales_per_month, aes(x = Month, y = Sales, group = 1)) +
  geom_line(color = "darkgreen") +
  geom_point(color = "red", size = 3) +
  theme_minimal() +
  labs(title = "Average Sales per Month", x = "Month", y = "Average Sales")

# Part 4: Conclusion

# Printing a concluding message
print("End of Advanced Introduction to R programming with Excel integration.")