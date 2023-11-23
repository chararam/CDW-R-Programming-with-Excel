# Advanced Introduction to R Programming with Excel Integration

# Part 1: Setting Up

# Install and load necessary packages
install.packages("dplyr")
install.packages("ggplot2")
library(dplyr)
library(ggplot2)

# Part 2: Reading and Combining Data from CSV Files

# Reading CSV files (replace with actual file paths)
sales_data <- read.csv("Sales_Data.csv")
customer_data <- read.csv("Customer_Data.csv")

# Combining the data (assuming a common column 'CustomerID' in both)
combined_data <- merge(customer_data, sales_data, by = "CustomerID")
print("Combined Data:")
print(combined_data)

# Part 3: Data Analysis and Visualization

# Analysis 1: Sales Distribution by Age Group
combined_data$AgeGroup <- cut(combined_data$Age, breaks=c(20,30,40,50), 
                              labels=c("20s", "30s", "40s"))
sales_by_age_group <- aggregate(Sales ~ AgeGroup, data = combined_data, sum)
print("Sales by Age Group:")
print(sales_by_age_group)

# Visualization 1: Bar Plot of Sales by Age Group
ggplot(sales_by_age_group, aes(x = AgeGroup, y = Sales)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_minimal() +
  labs(title = "Sales Distribution by Age Group", x = "Age Group", y = "Sales")

# Analysis 2: Average Sales per Month
avg_sales_per_month <- aggregate(Sales ~ Month, data = combined_data, mean)
print("Average Sales per Month:")
print(avg_sales_per_month)

# Visualization 2: Line Graph of Average Sales per Month
ggplot(avg_sales_per_month, aes(x = Month, y = Sales, group = 1)) +
  geom_line(color = "darkgreen") +
  geom_point(color = "red", size = 3) +
  theme_minimal() +
  labs(title = "Average Sales per Month", x = "Month", y = "Average Sales")

# Part 4: Conclusion

print("End of Advanced Introduction to R programming with Excel integration.")
