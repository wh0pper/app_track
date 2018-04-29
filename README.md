
# Job Application Tracker
### completed for Epicodus - Rails Week 1 Independent Project
* Applying for jobs is a crazy game these days. Here's a simple web app to help you keep track of the process.

## Implemented Features
* Basic CRUD functionality for tracking jobs and the corresponding steps
* Autopopulating default steps for all jobs added.
* Ability to mark steps complete, add notes, and customize new steps
* User authentication - must signup/login to track your applications. Your jobs are uniquely associated to your profile

## Pending Features
* Search/filter jobs by city
* Sort jobs and steps by ranking/priority respectively
*

## Learning Objectives While Building
* User authentication
* PDF file upload using paperclip

## Setup
### Instructions
Required dependencies. Before running locally you need to have the following installed on your machine: Ruby, Rails and a Rails compatible SQL database such as postgreSQL

* Then, clone the repository

* Navigate to the project root directory and install gems.
```
bundle install
```

* Initialize the database
```
rails db: create
rails db: migrate
rails db: seed
```
* After seeding the database, three example users will be generated each with unique jobs saved, you can access these profiles as either user1@example.com, user2@example.com, or user3@example.com all with password: password.
* Start up the local server
```
rails server
```

* To run tests
```
rspec
```

## Technologies Used
* Ruby on Rails, postgreSQL, rspec, Bootstrap, HTML, CSS, Devise for authentication, Paperclip for file uploads

## License

This project is licensed under the MIT License
