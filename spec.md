# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- The Sinatra Ruby gem is included in the Gemfile
- In ./app/controllers, Sinatra routes are defined to handle HTTP requests and responses

- [X] Use ActiveRecord for storing information in a database
- The ActiveRecord Ruby gem is included in the Gemfile
- In ./config/environment a connection is established between ActiveRecord and a SQLite database

- [X] Include more than one model class (e.g. User, Post, Category)
- My models include User, Bank, Bill, Creditcard, UserBank

- [X] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
- User has_many Bills, User has_many Creditcards...

- [X] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
- Creditcard belongs_to User, Creditcard belongs_to Bank...

- [X] Include user accounts with unique login attribute (username or email)
- Users email must be unique
- No too users can use the same email

- [X] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
- Bills, banks, and Creditcard all have routes for Creating, Reading, Updating and Destroying

- [X] Ensure that users can't modify content created by other users
- A redirect if not authorized method was included to prevent users from modifying other users content
- A user can only edit or delete his own collection of bills, banks, and creditcards

- [X] Include user input validations
- The required html attribute was added to all forms to ensure user has filled in information prior to form submission

- [X] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- The Sinatra Flash extension was used to display warning and update messages between HTTP requests

- [X] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [X] You have a large number of small Git commits

- [X] Your commit messages are meaningful

- [X] You made the changes in a commit that relate to the commit message

- [X] You don't include changes in a commit that aren't related to the commit message
