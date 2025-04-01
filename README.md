## Email automation

This project is a script that allows sending multiple emails to several users at the same time in an automatic way.

## Project structure

There is a file “createDB.sql”, which contains the queries I have entered to create my mini database.
“db_company.sqlite3” is the database, which is opened from SQLite.
main.py is the script.

## Requierements

Python version >= 3.8
Database: SQLite3
Libraries already installed with Python


This script automates sending emails using Gmail. To make it work, you will need to set up Google App Passwords. Follow these steps:

1.Enable 2-Step Verification on your Google account.
2.Go to Google App Passwords.
3.Select the app (e.g., "Mail") and the device (e.g., "Windows PC") from the dropdown menus.
4.Click "Generate" to receive a 16-character password.
5.Replace the empty string in the variable “passw” with your 16-character password.

## Use example

In the database you enter the users with their respective emails, exactly as in the example DB. The name attribute goes in the “name” column and the email attribute in the “email” column. In the script, for security reasons, neither the recipient's email nor the Google password appears. Replace these empty strings with your credentials

## Final words

I am learning python on my own and databases (although in this script the objective was not to put databases into practice). I want to show some of the things I'm learning and above all practice

