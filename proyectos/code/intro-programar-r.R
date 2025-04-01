# -------------------------------------------------------------------------- #
# Introducción a la programación en R
# ECON 520 - 2025 C1
# Fuente: [R Tutorial](https://www.w3schools.com/r/default.asp) (W3 Schools)
# -------------------------------------------------------------------------- #

# CONTENIDO
# - types 
#   data types: numeric, integer, complex, character, logical 
#   numbers: integers, doubles, complex
#   strings: single, double, backticks
#   booleans: TRUE, FALSE
#   operators: arithmetic, relational, logical, assignment, special
#   
# - conditionals + flow control
#   if else: if, else if, else
#   while: while
#   for: for
#   
# - data structures
#   vectors: c(), seq(), rep()
#   lists: list()
#   matrices: matrix()
#   arrays: array()
#   data frames: data.frame()
#   factors: factor()

## R Data Types --------------------------------------------------------------
  # . Data Types ---- 
  # In programming, data type is an important concept.
  # 
  # Variables can store data of different types, and different types can do different things.
  # 
  # In R, variables do not need to be declared with any particular type, and can even change type after they have been set:
  #   
  #   Example
  my_var <- 30 # my_var is type of numeric
  my_var <- "Sally" # my_var is now of type character (aka string)
  # R has a variety of data types and object classes. You will learn much more about these as you continue to get to know R.
  
  # . Basic Data Types ----
  # Basic data types in R can be divided into the following types:
    
    numeric - (10.5, 55, 787)
  integer - (1L, 55L, 100L, where the letter "L" declares this as an integer)
  complex - (9 + 3i, where "i" is the imaginary part)
  character (a.k.a. string) - ("k", "R is exciting", "FALSE", "11.5")
  logical (a.k.a. boolean) - (TRUE or FALSE)
  We can use the class() function to check the data type of a variable:
    
    # Example
  # numeric
  x <- 10.5
  class(x)
  
  # integer
  x <- 1000L
  class(x)
  
  # complex
  x <- 9i + 3
  class(x)
  
  # character/string
  x <- "R is exciting"
  class(x)
  
  # logical/boolean
  x <- TRUE
  class(x)
  
## R Numbers  --------------------------------------------------------------
  # Numbers
  # There are three number types in R:
  #   
  #   numeric
  # integer
  # complex
  # Variables of number types are created when you assign a value to them:
  #   
  #   Example
  x <- 10.5   # numeric
  y <- 10L    # integer
  z <- 1i     # complex
  # . Numeric ----
  # A numeric data type is the most common type in R, and contains any number with or without a decimal, like: 10.5, 55, 787:
  #   
  #   Example
  x <- 10.5
  y <- 55
  
  # Print values of x and y
  x
  y
  
  # Print the class name of x and y
  class(x)
  class(y)
  # . Integer ----
  # Integers are numeric data without decimals. This is used when you are certain that you will never create a variable that should contain decimals. To create an integer variable, you must use the letter L after the integer value:
  #   
  #   Example
  x <- 1000L
  y <- 55L
  
  # Print values of x and y
  x
  y
  
  # Print the class name of x and y
  class(x)
  class(y)
  
  # . Complex ----
  # A complex number is written with an "i" as the imaginary part:
  #   
  #   Example
  x <- 3+5i
  y <- 5i
  
  # Print values of x and y
  x
  y
  
  # Print the class name of x and y
  class(x)
  class(y)
  # . Type Conversion ----
  # You can convert from one type to another with the following functions:
    
    as.numeric()
  as.integer()
  as.complex()
  # Example
  x <- 1L # integer
  y <- 2 # numeric
  
  # convert from integer to numeric:
  a <- as.numeric(x)
  
  # convert from numeric to integer:
  b <- as.integer(y)
  
  # print values of x and y
  x
  y
  
  # print the class name of a and b
  class(a)
  class(b)
  
## R Strings --------------------------------------------------------------
  # . String Literals ----
  # Strings are used for storing text.
  # 
  # A string is surrounded by either single quotation marks, or double quotation marks:
  #   
  #   "hello" is the same as 'hello':
  #   
  #   Example
  "hello"
  'hello'
  # . Assign a String to a Variable ----
  # Assigning a string to a variable is done with the variable followed by the <- operator and the string:
    # 
    # Example
  str <- "Hello"
  str # print the value of str
  # Multiline Strings
  # You can assign a multiline string to a variable like this:
  #   
  #   Example
  str <- "Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."
  
  str # print the value of str
  # However, note that R will add a "\n" at the end of each line break. This is called an escape character, and the n character indicates a new line.
  # 
  # If you want the line breaks to be inserted at the same position as in the code, use the cat() function:
  #   
  #   Example
  str <- "Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."
  
  cat(str)

  # . String Length ----
  # There are many useful string functions in R.
  # 
  # For example, to find the number of characters in a string, use the nchar() function:
  #   
    # Example
  str <- "Hello World!"
  
  nchar(str)
  # . Check a String ----
  # Use the grepl() function to check if a character or a sequence of characters are present in a string:
  #   
  #   Example
  str <- "Hello World!"
  
  grepl("H", str)
  grepl("Hello", str)
  grepl("X", str)
  # . Combine Two Strings ----
  # Use the paste() function to merge/concatenate two strings:
  #   
  #   Example
  str1 <- "Hello"
  str2 <- "World"
  
  paste(str1, str2)

  
## R Booleans / Logical Values --------------------------------------------------------------
  # Booleans (Logical Values)
  # In programming, you often need to know if an expression is true or false.
  # 
  # You can evaluate any expression in R, and get one of two answers, TRUE or FALSE.
  # 
  # When you compare two values, the expression is evaluated and R returns the logical answer:
  #   
  #   Example
  10 > 9    # TRUE because 10 is greater than 9
  10 == 9   # FALSE because 10 is not equal to 9
  10 < 9    # FALSE because 10 is greater than 9
  # You can also compare two variables:
  #   
  #   Example
  a <- 10
  b <- 9
  
  a > b
  # You can also run a condition in an if statement, which you will learn much more about in the if..else chapter.
  # 
  # Example
  a <- 200
  b <- 33
  
  if (b > a) {
    print ("b is greater than a")
  } else {
    print("b is not greater than a")
  }

## R Operators --------------------------------------------------------------
  # . Operators ----
  # Operators are used to perform operations on variables and values.
  # 
  # In the example below, we use the + operator to add together two values:
  #   
  #   Example
  10 + 5
  # R divides the operators in the following groups:
  #   
  # Arithmetic operators
  # Assignment operators
  # Comparison operators
  # Logical operators
  # Miscellaneous operators
  
  # . R Arithmetic Operators ----
  # Arithmetic operators are used with numeric values to perform common mathematical operations:
    
    # Operator	Name	Example	Try it
  +	Addition	x + y	
  -	Subtraction	x - y	
  *	Multiplication	x * y	
  /	Division	x / y	
  ^	Exponent	x ^ y	
  %%	Modulus (Remainder from division)	x %% y	
  %/%	Integer Division	x%/%y	

  #   . R Assignment Operators ----
  # Assignment operators are used to assign values to variables:
  #   
  #   Example
  my_var <- 3
  
  my_var <<- 3
  
  3 -> my_var
  
  3 ->> my_var
  
  my_var # print my_var
  # Note: <<- is a global assigner. You will learn more about this in the Global Variable chapter.
  
  # It is also possible to turn the direction of the assignment operator.
  
  x <- 3 is equal to 3 -> x
  
  # . R Comparison Operators ----
  # Comparison operators are used to compare two values:
  #   
  #   Operator	Name	Example	Try it
  ==	Equal	x == y	
  !=	Not equal	x != y	
  >	Greater than	x > y	
  <	Less than	x < y	
  >=	Greater than or equal to	x >= y	
  <=	Less than or equal to	x <= y	
  
  # . R Logical Operators ----
  # Logical operators are used to combine conditional statements:
  #   
  #   Operator	Description
  &	Element-wise Logical AND operator. Returns TRUE if both elements are TRUE
  &&	Logical AND operator - Returns TRUE if both statements are TRUE
  |	Elementwise- Logical OR operator. Returns TRUE if one of the statements is TRUE
  ||	Logical OR operator. Returns TRUE if one of the statements is TRUE
  !	Logical NOT - Returns FALSE if statement is TRUE
  
  # . R Miscellaneous Operators ----
  # Miscellaneous operators are used to manipulate data:
  #   
  #   Operator	Description	Example
  :	Creates a series of numbers in a sequence	x <- 1:10
  %in%	Find out if an element belongs to a vector	x %in% y
  %*%	Matrix Multiplication	x <- Matrix1 %*% Matrix2
  # Note: You will learn more about Matrix multiplication and matrices in a later chapter.
  
## R If ... Else --------------------------------------------------------------
  # . Conditions and If Statements ----
  # R supports the usual logical conditions from mathematics:
  #   
  #   Operator	Name	Example	Try it
  ==	Equal	x == y	
  !=	Not equal	x != y	
  >	Greater than	x > y	
  <	Less than	x < y	
  >=	Greater than or equal to	x >= y	
  <=	Less than or equal to	x <= y	
  # These conditions can be used in several ways, most commonly in "if statements" and loops.
  
  # . The if Statement ----
  # An "if statement" is written with the if keyword, and it is used to specify a block of code to be executed if a condition is TRUE:
  #   
  #   Example
  a <- 33
  b <- 200
  
  if (b > a) {
    print("b is greater than a")
  }
#   In this example we use two variables, a and b, which are used as a part of the if statement to test whether b is greater than a. As a is 33, and b is 200, we know that 200 is greater than 33, and so we print to screen that "b is greater than a".
#   
#   R uses curly brackets { } to define the scope in the code.
#   
#   . Else If ----
#   The else if keyword is R's way of saying "if the previous conditions were not true, then try this condition":
# 
# Example
a <- 33
b <- 33

if (b > a) {
  print("b is greater than a")
} else if (a == b) {
  print ("a and b are equal")
}
# In this example a is equal to b, so the first condition is not true, but the else if condition is true, so we print to screen that "a and b are equal".
# 
# You can use as many else if statements as you want in R.
# 
# . If Else ----
# The else keyword catches anything which isn't caught by the preceding conditions:
#   
#   Example
a <- 200
b <- 33

if (b > a) {
  print("b is greater than a")
} else if (a == b) {
  print("a and b are equal")
} else {
  print("a is greater than b")
}

# In this example, a is greater than b, so the first condition is not true, also the else if condition is not true, so we go to the else condition and print to screen that "a is greater than b".
# 
# You can also use else without else if:
#   
#   Example
a <- 200
b <- 33

if (b > a) {
  print("b is greater than a")
} else {
  print("b is not greater than a")
}

## R While Loop --------------------------------------------------------------
# . Loops ----
# Loops can execute a block of code as long as a specified condition is reached.
# 
# Loops are handy because they save time, reduce errors, and they make code more readable.
# 
# R has two loop commands:
#   
#   while loops
# for loops

# . R While Loops ----
# With the while loop we can execute a set of statements as long as a condition is TRUE:
#   
#   Example
# Print i as long as i is less than 6:
  
  i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
}

#   In the example above, the loop will continue to produce numbers ranging from 1 to 5. The loop will stop at 6 because 6 < 6 is FALSE.
# 
# The while loop requires relevant variables to be ready, in this example we need to define an indexing variable, i, which we set to 1.
# 
# Note: remember to increment i, or else the loop will continue forever.

# . Break ----
# With the break statement, we can stop the loop even if the while condition is TRUE:
#   
#   Example
# Exit the loop if i is equal to 4.

i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
  if (i == 4) {
    break
  }
}

# The loop will stop at 3 because we have chosen to finish the loop by using the break statement when i is equal to 4 (i == 4).
# 
# . Next ----
# With the next statement, we can skip an iteration without terminating the loop:
#   
#   Example
# Skip the value of 3:
  
  i <- 0
while (i < 6) {
  i <- i + 1
  if (i == 3) {
    next
  }
  print(i)
}

  # When the loop passes the value 3, it will skip it and continue to loop.

# . If .. Else Combined with a While Loop ----
# Yahtzee! 
# To demonstrate a practical example, let us say we play a game of Yahtzee!
#   
#   Example
# Print "Yahtzee!" If the dice number is 6:
#   
  dice <- 1
while (dice <= 6) {
  if (dice < 6) {
    print("No Yahtzee")
  } else {
    print("Yahtzee!")
  }
  dice <- dice + 1
}
  
# If the loop passes the values ranging from 1 to 5, it prints "No Yahtzee". Whenever it passes the value 6, it prints "Yahtzee!".


## . R For Loop ----
# For Loops
# A for loop is used for iterating over a sequence:
#   
#   Example
for (x in 1:10) {
  print(x)
}

#   This is less like the for keyword in other programming languages, and works more like an iterator method as found in other object-oriented programming languages.
# 
# With the for loop we can execute a set of statements, once for each item in a vector, array, list, etc..
# 
# You will learn about lists and vectors, etc in a later chapter.
# 
# Example
# Print every item in a list:
#   
  fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  print(x)
}
  
# Example
# Print the number of dices:
#   
  dice <- c(1, 2, 3, 4, 5, 6)

for (x in dice) {
  print(x)
}
  
# The for loop does not require an indexing variable to set beforehand, like with while loops.

# . Break ----
# With the break statement, we can stop the loop before it has looped through all the items:
#   
#   Example
# Stop the loop at "cherry":
#   
  fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  if (x == "cherry") {
    break
  }
  print(x)
}
#   
# The loop will stop at "cherry" because we have chosen to finish the loop by using the break statement when x is equal to "cherry" (x == "cherry").

# . Next ----
# With the next statement, we can skip an iteration without terminating the loop:
#   
#   Example
# Skip "banana":
  
  fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  if (x == "banana") {
    next
  }
  print(x)
}
  
# When the loop passes "banana", it will skip it and continue to loop.

# . If .. Else Combined with a For Loop ----
# Yahtzee!
# To demonstrate a practical example, let us say we play a game of Yahtzee!
#   
#   Example
# Print "Yahtzee!" If the dice number is 6:
#   
  dice <- 1:6

for(x in dice) {
  if (x == 6) {
    print(paste("The dice number is", x, "Yahtzee!"))
  } else {
    print(paste("The dice number is", x, "Not Yahtzee"))
  }
}
  
# If the loop reaches the values ranging from 1 to 5, it prints "No Yahtzee" and its number. When it reaches the value 6, it prints "Yahtzee!" and its number.

## R Vectors --------------------------------------------------------------
# . Vectors ----
# A vector is simply a list of items that are of the same type.
# 
# To combine the list of items to a vector, use the c() function and separate the items by a comma.
# 
# In the example below, we create a vector variable called fruits, that combine strings:
#   
#   Example
# # Vector of strings
fruits <- c("banana", "apple", "orange")

# Print fruits
fruits

# In this example, we create a vector that combines numerical values:
#   
#   Example
# # Vector of numerical values
numbers <- c(1, 2, 3)

# Print numbers
numbers

# To create a vector with numerical values in a sequence, use the : operator:
#   
#   Example
# # Vector with numerical values in a sequence
numbers <- 1:10

numbers

# You can also create numerical values with decimals in a sequence, but note that if the last element does not belong to the sequence, it is not used:
#   
#   Example
# # Vector with numerical decimals in a sequence
numbers1 <- 1.5:6.5
numbers1

# Vector with numerical decimals in a sequence where the last element is not used
numbers2 <- 1.5:6.3
numbers2
# Result:
#   
#   [1] 1.5 2.5 3.5 4.5 5.5 6.5
# [1] 1.5 2.5 3.5 4.5 5.5

# In the example below, we create a vector of logical values:
#   
#   Example
# # Vector of logical values
log_values <- c(TRUE, FALSE, TRUE, FALSE)

log_values

# . Vector Length ----
# To find out how many items a vector has, use the length() function:
#   
#   Example
fruits <- c("banana", "apple", "orange")

length(fruits)

# . Sort a Vector ----
# To sort items in a vector alphabetically or numerically, use the sort() function:
#   
#   Example
fruits <- c("banana", "apple", "orange", "mango", "lemon")
numbers <- c(13, 3, 5, 7, 20, 2)

sort(fruits)  # Sort a string
sort(numbers) # Sort numbers

# . Access Vectors ----
# You can access the vector items by referring to its index number inside brackets []. The first item has index 1, the second item has index 2, and so on:
#   
#   Example
fruits <- c("banana", "apple", "orange")

# Access the first item (banana)
fruits[1]
# You can also access multiple elements by referring to different index positions with the c() function:
  
  Example
fruits <- c("banana", "apple", "orange", "mango", "lemon")

# Access the first and third item (banana and orange)
fruits[c(1, 3)]
You can also use negative index numbers to access all items except the ones specified:
  
  Example
fruits <- c("banana", "apple", "orange", "mango", "lemon")

# Access all items except for the first item
fruits[c(-1)]

# . Change an Item ----
# To change the value of a specific item, refer to the index number:
#   
#   Example
fruits <- c("banana", "apple", "orange", "mango", "lemon")

# Change "banana" to "pear"
fruits[1] <- "pear"

# Print fruits
fruits

# . Repeat Vectors ----
# To repeat vectors, use the rep() function:
#   
#   Example
# Repeat each value:
  
  repeat_each <- rep(c(1,2,3), each = 3)

repeat_each
# Example
# Repeat the sequence of the vector:
  
  repeat_times <- rep(c(1,2,3), times = 3)

repeat_times
# Example
# Repeat each value independently:
#   
  repeat_indepent <- rep(c(1,2,3), times = c(5,2,1))

repeat_indepent

# . Generating Sequenced Vectors ----
# One of the examples on top, showed you how to create a vector with numerical values in a sequence with the : operator:
#   
#   Example
numbers <- 1:10

numbers

# To make bigger or smaller steps in a sequence, use the seq() function:
#   
#   Example
numbers <- seq(from = 0, to = 100, by = 20)

numbers
# Note: The seq() function has three parameters: from is where the sequence starts, to is where the sequence stops, and by is the interval of the sequence.

## R Lists --------------------------------------------------------------
  
# . Lists ----
# A list in R can contain many different data types inside it. A list is a collection of data which is ordered and changeable.
# 
# To create a list, use the list() function:
#   
#   Example
# List of strings
thislist <- list("apple", "banana", "cherry")

# Print the list
thislist

# . Access Lists ----
# You can access the list items by referring to its index number, inside brackets. The first item has index 1, the second item has index 2, and so on:
#   
#   Example
thislist <- list("apple", "banana", "cherry")

thislist[1]

# . Change Item Value ----
# To change the value of a specific item, refer to the index number:
#   
#   Example
thislist <- list("apple", "banana", "cherry")
thislist[1] <- "blackcurrant"

# Print the updated list
thislist

# . List Length ----
# To find out how many items a list has, use the length() function:
#   
#   Example
thislist <- list("apple", "banana", "cherry")

length(thislist)

# . Check if Item Exists ----
# To find out if a specified item is present in a list, use the %in% operator:
#   
#   Example
# Check if "apple" is present in the list:
  
  thislist <- list("apple", "banana", "cherry")

"apple" %in% thislist

# . Add List Items ----
# To add an item to the end of the list, use the append() function:
#   
#   Example
# Add "orange" to the list:
  
  thislist <- list("apple", "banana", "cherry")

append(thislist, "orange")

# To add an item to the right of a specified index, add "after=index number" in the append() function:
#   
#   Example
# Add "orange" to the list after "banana" (index 2):
  
  thislist <- list("apple", "banana", "cherry")

append(thislist, "orange", after = 2)

# . Remove List Items ----
# You can also remove list items. The following example creates a new, updated list without an "apple" item:
#   
#   Example
# Remove "apple" from the list:
  
  thislist <- list("apple", "banana", "cherry")

newlist <- thislist[-1]

# Print the new list
newlist

# . Range of Indexes ----
# You can specify a range of indexes by specifying where to start and where to end the range, by using the : operator:
#   
#   Example
# Return the second, third, fourth and fifth item:
#   
  thislist <- list("apple", "banana", "cherry", "orange", "kiwi", "melon", "mango")

(thislist)[2:5]

# Note: The search will start at index 2 (included) and end at index 5 (included).
# Remember that the first item has index 1.

# . Loop Through a List ----
# You can loop through the list items by using a for loop:
#   
#   Example
# Print all items in the list, one by one:
#   
  thislist <- list("apple", "banana", "cherry")

for (x in thislist) {
  print(x)
}

# . Join Two Lists ----
# There are several ways to join, or concatenate, two or more lists in R.
# 
# The most common way is to use the c() function, which combines two elements together:
#   
#   Example
list1 <- list("a", "b", "c")
list2 <- list(1,2,3)
list3 <- c(list1,list2)

list3

## R Matrices --------------------------------------------------------------

# . Matrices ----
# A matrix is a two dimensional data set with columns and rows.
# 
# A column is a vertical representation of data, while a row is a horizontal representation of data.
# 
# A matrix can be created with the matrix() function. Specify the nrow and ncol parameters to get the amount of rows and columns:
#   
#   Example
# Create a matrix
thismatrix <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)

# Print the matrix
thismatrix

# Note: Remember the c() function is used to concatenate items together.

# You can also create a matrix with strings:
#   
#   Example
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

thismatrix

# . Access Matrix Items ----
# You can access the items by using [ ] brackets. The first number "1" in the bracket specifies the row-position, while the second number "2" specifies the column-position:
#   
#   Example
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

thismatrix[1, 2]

# The whole row can be accessed if you specify a comma after the number in the bracket:
#   
#   Example
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

thismatrix[2,]

# The whole column can be accessed if you specify a comma before the number in the bracket:
#   
#   Example
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

thismatrix[,2]

# . Access More Than One Row ----
# More than one row can be accessed if you use the c() function:
#   
#   Example
thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)

thismatrix[c(1,2),]

# . Access More Than One Column ----
# More than one column can be accessed if you use the c() function:
#   
#   Example
thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)

thismatrix[, c(1,2)]

# . Add Rows and Columns ----
# Use the cbind() function to add additional columns in a Matrix:
#   
#   Example
thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)

newmatrix <- cbind(thismatrix, c("strawberry", "blueberry", "raspberry"))

# Print the new matrix
newmatrix

# Note: The cells in the new column must be of the same length as the existing matrix.

# Use the rbind() function to add additional rows in a Matrix:
#   
#   Example
thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)

newmatrix <- rbind(thismatrix, c("strawberry", "blueberry", "raspberry"))

# Print the new matrix
newmatrix

# Note: The cells in the new row must be of the same length as the existing matrix.

# . Remove Rows and Columns ----
# Use the c() function to remove rows and columns in a Matrix:
#   
#   Example
thismatrix <- matrix(c("apple", "banana", "cherry", "orange", "mango", "pineapple"), nrow = 3, ncol =2)

#Remove the first row and the first column
thismatrix <- thismatrix[-c(1), -c(1)]

thismatrix

# . Check if an Item Exists ----
# To find out if a specified item is present in a matrix, use the %in% operator:
#   
#   Example
# Check if "apple" is present in the matrix:
#   
  thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

"apple" %in% thismatrix

# . Number of Rows and Columns ----
# Use the dim() function to find the number of rows and columns in a Matrix:
#   
#   Example
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

dim(thismatrix)

# . Matrix Length ----
# Use the length() function to find the dimension of a Matrix:
#   
#   Example
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

length(thismatrix)

# Total cells in the matrix is the number of rows multiplied by number of columns.
# 
# In the example above: Dimension = 2*2 = 4.

# . Loop Through a Matrix ----
# You can loop through a Matrix using a for loop. The loop will start at the first row, moving right:
#   
#   Example
# Loop through the matrix items and print them:
#   
  thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

for (rows in 1:nrow(thismatrix)) {
  for (columns in 1:ncol(thismatrix)) {
    print(thismatrix[rows, columns])
  }
}

# . Combine two Matrices ----
# Again, you can use the rbind() or cbind() function to combine two or more matrices together:
#   
#   Example
# Combine matrices
Matrix1 <- matrix(c("apple", "banana", "cherry", "grape"), nrow = 2, ncol = 2)
Matrix2 <- matrix(c("orange", "mango", "pineapple", "watermelon"), nrow = 2, ncol = 2)

# Adding it as a rows
Matrix_Combined <- rbind(Matrix1, Matrix2)
Matrix_Combined

# Adding it as a columns
Matrix_Combined <- cbind(Matrix1, Matrix2)
Matrix_Combined


## R Arrays --------------------------------------------------------------

# . Arrays ----
# Compared to matrices, arrays can have more than two dimensions.
# 
# We can use the array() function to create an array, and the dim parameter to specify the dimensions:
#   
#   Example
# An array with one dimension with values ranging from 1 to 24
thisarray <- c(1:24)
thisarray

# An array with more than one dimension
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray

# . Example Explained 
# In the example above we create an array with the values 1 to 24.
# 
# How does dim=c(4,3,2) work?
#   The first and second number in the bracket specifies the amount of rows and columns.
# The last number in the bracket specifies how many dimensions we want.
# 
# Note: Arrays can only have one data type.

# . Access Array Items ----
# You can access the array elements by referring to the index position. You can use the [] brackets to access the desired elements from an array:
#   
#   Example
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))

multiarray[2, 3, 2]

# The syntax is as follow: array[row position, column position, matrix level]
# 
# You can also access the whole row or column from a matrix in an array, by using the c() function:
#   
#   Example
thisarray <- c(1:24)

# Access all the items from the first row from matrix one
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray[c(1),,1]

# Access all the items from the first column from matrix one
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray[,c(1),1]
# A comma (,) before c() means that we want to access the column.
# 
# A comma (,) after c() means that we want to access the row.

# . Check if an Item Exists ----
# To find out if a specified item is present in an array, use the %in% operator:
#   
#   Example
# Check if the value "2" is present in the array:
#   
  thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))

2 %in% multiarray

# . Amount of Rows and Columns ----
# Use the dim() function to find the amount of rows and columns in an array:
#   
#   Example
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))

dim(multiarray)

# . Array Length ----
# Use the length() function to find the dimension of an array:
#   
#   Example
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))

length(multiarray)

# . Loop Through an Array ----
# You can loop through the array items by using a for loop:
#   
#   Example
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))

for(x in multiarray){
  print(x)
}


## R Factors --------------------------------------------------------------

# . Factors ----
# Factors are used to categorize data. Examples of factors are:
# 
# Demography: Male/Female
# Music: Rock, Pop, Classic, Jazz
# Training: Strength, Stamina
# To create a factor, use the factor() function and add a vector as argument:
# 
# Example
# Create a factor
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

# Print the factor
music_genre
# Result:
# [1] Jazz    Rock    Classic Classic Pop     Jazz    Rock    Jazz
# Levels: Classic Jazz Pop Rock
# 
# You can see from the example above that that the factor has four levels (categories): Classic, Jazz, Pop and Rock.

# To only print the levels, use the levels() function:
# 
# Example
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

levels(music_genre)
# Result:
# [1] "Classic" "Jazz"    "Pop"     "Rock"   
# 
# You can also set the levels, by adding the levels argument inside the factor() function:
# 
# Example
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"), levels = c("Classic", "Jazz", "Pop", "Rock", "Other"))

levels(music_genre)
# Result:
# [1] "Classic" "Jazz"    "Pop"     "Rock"    "Other"
# 

# . Factor Length ----
# Use the length() function to find out how many items there are in the factor:
# 
# Example
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

length(music_genre)
# Result:
# [1] 8
# 

# . Access Factors ----
# To access the items in a factor, refer to the index number, using [] brackets:
# 
# Example
# Access the third item:

music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

music_genre[3]
# Result:
# [1] Classic
# Levels: Classic Jazz Pop Rock
# 

# . Change Item Value ----
# To change the value of a specific item, refer to the index number:
# 
# Example
# Change the value of the third item:
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

music_genre[3] <- "Pop"

music_genre[3]
# Result:
# [1] Pop
# Levels: Classic Jazz Pop Rock
# 
# Note that you cannot change the value of a specific item if it is not already specified in the factor. The following example will produce an error:
# 
# Example
# Trying to change the value of the third item ("Classic") to an item that does not exist/not predefined ("Opera"):

music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

music_genre[3] <- "Opera"

music_genre[3]
# Result:
# Warning message:
# In `[<-.factor`(`*tmp*`, 3, value = "Opera") :
#   invalid factor level, NA generated
# 

# However, if you have already specified it inside the levels argument, it will work:
# 
# Example
# Change the value of the third item:

music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"), levels = c("Classic", "Jazz", "Pop", "Rock", "Opera"))

music_genre[3] <- "Opera"

music_genre[3]
# Result:
# [1] Opera
# Levels: Classic Jazz Pop Rock Opera
# 


##### END #####
