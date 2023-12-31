# INFO 201 Problem Set: Basic R
October 4, 2023
1 Variables and computing (25pt)
Here we ask you to define, compute, and print a number of variables See 2.4 in the course book
1.1 Variables (10pt)
1. (1pt) Create a numeric variable my_age that is equal to your age
2. (3) How many seconds is there in a year? Compute this number! Assign it to a suitably
named variable and print the result with a informative message
3. (3) What is your age in seconds? Use the variable my_age you computed above and seconds-
in-year, and compute it. Assign the result to a suitably named variable and print it.
4. (3) How many seconds is a typical human lifetime?
1.2 Computing
Now let’s do some physics. A moving body will be more massive than a standing body, and how
much massive, depends on the speed:
m = m0
γ where γ =
√
1 − v2
c2 (called Lorentz factor). (1)
Here m0 is the rest mass (mass while not moving), v is speed, and c = 300 000 km/s is the speed of
light.
1. (4) What is the moving mass of a student who weighs m0 = 60kg and is running 10m/s?
(This is a very fast runner.)
2. (4) When you compute it, the computer will most likely still print “60”. But what is the
difference between the mass and rest mass, m − m0? Can you get a positive number here?
Hint: approximately 3.3 × 10−8.
3. (4) What is the mass of a proton that is moving 270 000 km/s? Its rest mas m0 = 1.672 × 10−27kg.
Hint: approximately 3.8 × 10−27
4. (3) How many times heavier is the moving proton compared to one that is standing still?
2
2 Logical operations (25p)
See 2.5.3 in the course book.
Always ensure that your code produces output! Check the “compile report”.
1. (5) Are you more than 650M seconds old? Use your age in second you computed above in
Section 1.1 Perform such logical operation and assign the result to a variable I_am_old. Print
the result with a suitable message
2. (10) Are you more than 650M seconds and less than 1Billion seconds old? Write a logical
expression that checks both conditions and uses logical and to test if both conditions are right.
3. (10) Are you more than 500M second old, but not more than 700M seconds old? Write a
logical expression that checks both condition, and inverts the second one using logical not.
3 Strings (25p)
See Section 3.5 in the course book, you may also consult R for Data Science, section “Strings”.
1. (5) Install stringr package. Make sure you do not re-install it in the code! Load the package
(you should do it in code)
2. (2) create a variable template which should contain Hello, my name is {name}, and I’m
{age} years old.
3. (3) Create a string variable name that is your name, and a (numeric) variable age that is your
age
4. (5) Use stringr package functionality to replace {name} with your name and {age} with your
age in the template. Use the variables name/age, do not hardcode it here. Store the results
in a variable intro
5. (5) Create a new variable loud_intro, which is your intro variable in all upper-case letters.
Print it.
6. (5) Using the str_count function, find how many times the letter “e” appears in my_intro.
4 Loops (25)
See 3.1 in the course book
1. (2) Use a for-loop to print numbers 1..10
2. (3) Use a for loop to print squares of numbers 1..10
3. (5) Use for loop to print both numbers and their squares along the lines:
1^2 = 1
2^2 = 4
...
Hint: use cat(), and check out the sep= argument.
3
4. (7) Use for-loop to compute a sum of all numbers from 1 to 100. Print the result with an
explanatory message.
5. (8) In math, factorial (denoted by !) means product of all number up to the given number.
So e.g 5! = 1 × 2 × 3 × 4 × 5 = 120. Compute all factorials from 10! down to 1! using loops.
You code should output:
10! = 3628800
9! = 362880
...
1! = 1
Hint: use one loop inside the other (nested loops).
