## 04/06/2020
#ADDED
- application controller - index page of application
- sessions controller - ability for user to sign up and log in
- users controller - ability for user to access home page
- bill controller - ability for user to add bills

#TODO
- Fix Tux, will load when nothing in config.ru
- Use instance variable user or current_user method?
- routes should be users/:id/bills and users/:id/banks

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
