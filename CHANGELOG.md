## 04/06/2020
#ADDED
- working on dynamic html calendar
- add css to home page

#TODO
- Fix Tux, will load when nothing in config.ru
- Use instance variable user or current_user method?
- routes should be users/:id/bills and users/:id/banks?


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
