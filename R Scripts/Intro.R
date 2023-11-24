# Introduction to R Programming with Excel Integration

# Part 1: Basic R Concepts

# Print a message to the console
print("Welcome to R Programming!")

# Creating a vector - a basic data structure in R which is like a simple list of values
my_vector <- c(1, 2, 3, 4, 5)
print("A simple vector:")
print(my_vector)

# Performing basic arithmetic operations - calculating the sum of elements in the vector
sum_result <- sum(my_vector)
print("Sum of the vector elements:")
print(sum_result)

# Part 2: Reading Data from a CSV File

# Installing and loading the 'readxl' package to read Excel files
# Note: Packages in R provide additional functionality
install.packages("readxl")
library(readxl)

# Reading data from a CSV file - make sure to replace the path with the path to your actual CSV file
data_from_csv <- read.csv("/Users/chararam/Documents/GitHub/CDW-R-Programming-with-Excel/data/Customer_Data.csv")
print("Data read from CSV file:")
print(data_from_csv)

# Part 3: Data Manipulation

# Performing simple data manipulation - calculating the mean (average) of a numeric column
# Replace 'CustomerID' with the name of the column you want to calculate the mean for
mean_value <- mean(data_from_csv$CustomerID, na.rm = TRUE)  # 'na.rm = TRUE' ensures that missing values are ignored [NA remove]
print("Mean of the selected column:")
print(mean_value)

# Part 4: Writing Data to an Excel File

# Installing and loading the 'writexl' package to write Excel files
install.packages("writexl")
library(writexl)

# Writing the data from the CSV file to an Excel file - replace 'output.xlsx' with your desired file name
write_xlsx(data_from_csv, "output.xlsx")
print("Data written to Excel file successfully.")

# Part 5: Cool Example - Visualizing Data

# Plotting a simple graph - a line graph of the CustomerID column
# 'type = "l"' specifies a line plot, 'col' sets the color, and 'main', 'xlab', and 'ylab' add titles and labels
plot(data_from_csv$CustomerID, type = "l", col = "blue",
     main = "Simple Line Graph", xlab = "Index", ylab = "Values")
print("Line graph plotted successfully.")

# Conclusion
print("End of introduction to R programming with Excel integration.")
