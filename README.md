# sqlassign3
https://docs.google.com/document/d/1ADpf7svIE0ARQLutu6PLrgNZXcZAPeZKUFJWqggzkXo/edit?usp=sharing <-- GROUP REPORT


Assignment 3 – Relational Databases


This assignment requires you to apply your understanding of table relationships including Primary
and Foreign Keys and Cardinality (i.e. relationships between tables, such as one-to-one, many-to-
one and one-to-many). You will also combine your knowledge of INSERT, SUBSTR,
SUBSTRING_INDEX and SELECT statements to build carefully constructed statements to copy data
from one table to another. Your mark in this assignment counts for 10% of your final grade.
Assignment Requirements:
This assignment is to be completed in groups of 2-5 people.
SQL formatting
• Please include your full names and student numbers
• Part One will require much of your work to be completed in MySQL, name your SQL script
GroupNumber_Assignment3.sql and complete all of your SQL work in this file. Ensure to use
the data from the my_contacts_a3.sql file to populate your database.
• Inside GroupNumber_Assignment3.sql I should find all your SQL commands required to
complete the assignment.
• The data provided (my_contacts_a3.sql) is solely for the purpose of populating your
database with data – do not complete your SQL work in this file.
• Utilize the SQL Standards document provided in week 2 – with note to capitalization of
keywords and lower-case database, table and field names.
• Statements should be broken over multiple lines as appropriate
• Remember to add a brief descriptive comment for each query. You do not need to document
every single line, but please annotate the purpose or function of the statement. You must
demonstrate that you understand what the SQL is doing.
• Please write in complete sentences in the commenting for relevant questions.
Report formatting
• Name your report file GroupNumber_Assignment3.docx
• Give your report an appropriate title with separate title page.
• Please include your full names and student numbers.
• Part Two will require much of your work to me completed in a word processor; name your
document GroupNumber_Assignment3.docx as its file name.
• For each question, please include the questions’ number and text.
• When providing documentation of a SQL query, please include the text of your query
(including comments, and a screenshot which clearly shows the execution of your
commands and the results. You might need to send more than one screenshot to show the
results for each question).
Submitting your assignment
• Create a zip file containing your SQL script and report
• Submit assignment zip file via the course website. Do not submit via email.
Evaluation Method
For each question you will receive the following marks:
• Execution: A variable number of marks will be assigned whether the command will run as
provided.
• Accuracy: A variable number of marks will be assigned whether the question is answered
correctly.
Additionally, the following marks will be assigned to the SQL script as a whole
• Structure: Up to 16 marks will be assigned for well-structured scripts that follow SQL
standards. i.e. capitalized commands, lower case field names with underscores where
needed, new lines, etc.
• Commenting: Up to 10 marks will be assigned for helpful, descriptive comments to be
included throughout the script
If you have any questions, please do not hesitate to ask me.
Good luck.

Part One:

Step 1 – You have been provided a SQL script containing data for a table called my_contacts. Import this data into a new database that you create for the purpose of this assignment – name the database appropriately. Please include the importation process in your GroupNumber_Assignment3.sql file.
Execution: 2 marks
Accuracy: 1 mark

Step 2 – Using one insert statement, add 10 more users to this table. Please devise fictitious contact information for this purpose please. Decide whether your import statement requires field mapping. If it does, include it, and if it does not, exclude it.
Execution: 1 mark
Accuracy: 4 marks

Step 3 – In the my_contacts table you will find two columns that are violating First Normal Form by storing multiple values within each column. Use your knowledge of working with string values, multi-table operations and joins to extract the data
from my_contacts and store the data according to this schema; there is an ERD provided below to assist you. Please establish appropriate composite primary IDs for the junction tables, and otherwise use the ERD should explain the primary and foreign keys that need to be established.
Please remove any empty/unwanted columns after you have completed your work
Execution: 18 marks
Accuracy: 55 marks

Part two:
See the next three pages for donation forms that have been submitted to our fictional charity. Please build an SQL script that will build the necessary database, tables and columns from scratch, then INSERT the data from the forms that have been provided.
After the database is complete, export an Entity Relationship Diagram illustrating the data model you have developed showing all necessary tables, fields and relationships. Include the ERD in your report along with a summary of relevant design considerations.
Here are some considerations to help you with this task:
• For check boxes, please choose the data type that you think would be most effective.
• For allocation, please use a numeric data type that supports two decimal places
• For expiry date, postal code, and phone number please store the data exactly as shown
• For all other data, when choosing data types for column you only need to consider the data that has been provided. For example, the maximum donation amount that will need to be stored is
1000 and the smallest is 50.
You will earn marks by ensuring the following:
1. The ability of database to properly store provided data 20 marks
2. Data is kept unique through correctly defined primary keys 10 marks
3. Table relationships are properly established using foreign keys 15 marks
4. The SQL script provided in your submission accomplishes the above while executing without error. (Prorated by items 1-3) 10 marks
