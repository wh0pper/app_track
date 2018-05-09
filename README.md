
# Job Application Tracker
### completed for Epicodus - Rails Week 1 Independent Project
* Applying for jobs is a crazy game these days. Here's a simple web app to help you keep track of the process. 

## Implemented Features
* Basic CRUD functionality for tracking jobs and the corresponding steps 
* Autopopulating default steps for all jobs added.
* Ability to mark steps complete, add notes, and customize new steps

## Pending Features
* Search/filter jobs by city
* Sort jobs and steps by ranking/priority respectively

## Learning Objectives 
* I worked on this project over the course of about 16 hours between my first two weeks of learning the Rails framework. At the outset of this project I set out to achieve the following learning objectives:
  * Setting up and working with ActiveRecord associations, validations and scopes
  * Modeling and collecting data using ActiveRecord with a postgreSQL database
  * Routing and rendering views for CRUD behavior in Rails
  * Test-Driven Development using RSPC 
  * Generating fake datasets for testing and development purposes
  * Using Devise for user authentication
  * Using Paperclip to upload files

## Setup
### Instructions
Required dependencies. Before running locally you need to have the following installed on your machine: Ruby, Rails and a Rails compatible SQL database such as postgreSQL
  
* Then, clone the repository

* Navigate to the project root directory and install gems.
```
bundle install
```

Initialize the database
```
rails db: create
rails db: migrate
rails db: seed
```

* Start up the local server
```
rails server
```

* To run tests
```
rspec
```

## Technologies Used
* Ruby on Rails, postgreSQL, rspec, Bootstrap, HTML, CSS

## License

This project is licensed under the MIT License
