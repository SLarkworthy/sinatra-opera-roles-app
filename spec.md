Specs:
- [x] Use Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database
- [x] Include more than one model class (e.g. User, Post, Category)
    Users and Roles
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
    Users have many roles
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
    Roles belong to a User
- [x] Include user accounts with unique login attribute (username or email)
    Username and email must be unique. Users log in with their email.
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
- [x] Ensure that users can't modify content created by other users
    users will be redirected if they modify the uri to attempt this
- [x] Include user input validations
    Roles must have a name, opera, and composer to be saved.
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [ ] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message