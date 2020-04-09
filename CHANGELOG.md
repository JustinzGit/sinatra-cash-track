## 04/09/2020

#TODO
- calendar is displaying other users duedates
- inline style to flash messages

## 04/08/2020
#ADDED
- Boostrap CSS to all pages

#CHANGED
- Change Bill Balance Input - ensure user enters correctly
- Change Bill balance column type to integer
- Change Bill Due Date Input - ensure user enters correctly
- Change Bank Form - allow user to select from existing banks
- Change Bank Checking / Savings input - ensure user enters correctly
- Change Bank Checking /Savings column type to integer
- Ensure user enters Balance, interest rate, credit, and due date correctly
- Change Creditcard Checking /Savings / Intrest rate / credit column type to integer
- Change all forms to boostrap forms
- Change urls to open new window

## 04/07/2020
#ADDED
- html calendar and methods to make calendar dynamic
- User can see on calendar when bill is due
- User can see what today's date is on calendar
- bootstrap CSS

#CHANGED
- moved bill, banks, and creditcard information into bootstrap table
- form to add a new bill to bootstrap form, added color ID

## 04/06/2020
#ADDED
- application controller - index page of application
- sessions controller - ability for user to sign up and log in
- users controller - ability for user to access home page
- bill controller - ability for user to add bills and edit them
- banks controller - ability for user to add banks and edit them
- credit cards controller - ability for user to add creditcards and edit them
- corresponding views to show/add/edit users, banks, bills, and creditcards

## 04/05/2020
#ADDED
- Basic file structure needed for project
- App concept in wireframe.md
- Setup environment, Gemfile and Rakefile
- Models and their associations
- Created migrations and established database
- Add checking_balance / saving_balance attribute to banks model

##REMOVED
- Removed has many debitcards associations from users
- Removed has many debitcards associations from banks
- Removed debitcard model from app
- Remove debitcards table
