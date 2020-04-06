# Application Overview
- A Sinatra web application that allows a user to organize and track expenses

# User Stories
- A user should be able to sign up and log in
- A user can add and track their bills
- A user can add and track their debit / credit card information
- A user can add a bank to their account
- A user should be able to associate their cards to a bank

# MVP
- //To-Do

# Stretch Features
- Use css from Bootstrap

# Models

## User - Model
### attributes
- username
- email
- password

### associations
- has many bills
- has many debit cards
- has many credit cards
- has many user_banks
- has many banks through user_banks

## Bill - Model
### attributes
- provider
- amount due (balance)
- due date
- paid?
- user_id

### associations
- belongs to user

## Bank - Model
### attributes
- name
- url

### associations
- has many debit cards
- has many credit cards
- has many user banks
- has many users through user banks

## Credit Card - Model
### attributes
- available balance
- available credit
- amount due date
- intrest rate
- user_id
- bank_id

### associations
- belongs to user
- belongs to bank

## Debit Card - Model
### attributes
- available balance
- user_id
- bank_id

### associations
- belongs to user
- belongs to bank

## User Bank - Join Table
- user id
- bank id

### associations
- belongs to user
- belongs to bank
