# Introduction to R Programming with Excel Integration

# Part 1: Basic R Concepts

# Print a message
print("Welcome to R Programming!")

# Creating a vector
my_vector <- c(1, 2, 3, 4, 5)
print("A simple vector:")
print(my_vector)

# Basic arithmetic operations
sum_result <- sum(my_vector)
print("Sum of the vector elements:")
print(sum_result)

# Part 2: Reading Data from a CSV File

# Install and load necessary package for reading Excel files
install.packages("readxl")
library(readxl)

# Reading a CSV file (replace 'file_path.csv' with your actual file path)
data_from_csv <- read.csv("file_path.csv")
print("Data read from CSV file:")
print(data_from_csv)

# Part 3: Data Manipulation

# Simple data manipulation - calculating the mean of a numeric column
# Replace 'numeric_column' with your actual column name
mean_value <- mean(data_from_csv$numeric_column, na.rm = TRUE)
print("Mean of the selected column:")
print(mean_value)

# Part 4: Writing Data to an Excel File

# Install and load necessary package for writing Excel files
install.packages("writexl")
library(writexl)

# Writing data to an Excel file (replace 'output.xlsx' with your desired file name)
write_xlsx(data_from_csv, "output.xlsx")
print("Data written to Excel file successfully.")

# Part 5: Cool Example - Visualizing Data

# Plotting a simple graph
plot(data_from_csv$numeric_column, type = "l", col = "blue",
     main = "Simple Line Graph", xlab = "Index", ylab = "Values")
print("Line graph plotted successfully.")

# Conclusion
print("End of introduction to R programming with Excel integration.")
