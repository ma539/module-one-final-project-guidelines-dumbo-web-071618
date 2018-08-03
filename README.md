# Module One Final Project Guidelines

Congratulations, you're at the end of module one! You've worked crazy hard to get here and have learned a ton.

For your final project, we'll be building a Command Line database application.

## Project Requirements

### Option One - Data Analytics Project

1. Access a Sqlite3 Database using ActiveRecord.
2. You should have at minimum three models including one join model. This means you must have a many-to-many relationship.
3. You should seed your database using data that you collect either from a CSV, a website by scraping, or an API.
4. Your models should have methods that answer interesting questions about the data. For example, if you've collected info about movie reviews, what is the most popular movie? What movie has the most reviews?
5. You should provide a CLI to display the return values of your interesting methods.  
6. Use good OO design patterns. You should have separate classes for your models and CLI interface.

### Option Two - Command Line CRUD App

1. Access a Sqlite3 Database using ActiveRecord.
2. You should have a minimum of three models.
3. You should build out a CLI to give your user full CRUD ability for at least one of your resources. For example, build out a command line To-Do list. A user should be able to create a new to-do, see all todos, update a todo item, and delete a todo. Todos can be grouped into categories, so that a to-do has many categories and categories have many to-dos.
4. Use good OO design patterns. You should have separate models for your runner and CLI interface.

### Brainstorming and Proposing a Project Idea

Projects need to be approved prior to launching into them, so take some time to brainstorm project options that will fulfill the requirements above.  You must have a minimum of four [user stories](https://en.wikipedia.org/wiki/User_story) to help explain how a user will interact with your app.  A user story should follow the general structure of `"As a <role>, I want <goal/desire> so that <benefit>"`. In example, if we were creating an app to randomly choose nearby restaurants on Yelp, we might write:

* As a user, I want to be able to enter my name to retrieve my records
* As a user, I want to enter a location and be given a random nearby restaurant suggestion
* As a user, I should be able to reject a suggestion and not see that restaurant suggestion again
* As a user, I want to be able to save to and retrieve a list of favorite restaurant suggestions

## Description:  
The following CLI (Command Line Interface) application was built for the purpose of recommending activities based on the current weather.  Currently the user can create, read, update and delete from the "activities" table and the corresponding join table "weather_activities".  This project utilizes the functionalities present in ActiveRecord.  Utilizing the Dark Sky Weather API, we obtain the current weather and display the list of activities the user can do based on this weather.  

##Install instructions:
All of the gems necessary are present within the Gemfile.  Please run bundle install, and then create and seed the database using rake db:migrate and rake db:seed.  

##Contributor's Guide


##License


# Presentation
     - Describe something you struggled to build, and show us how you ultimately implemented it in your code.
Something we struggled to build was the interaction with our database because we were struggling to conceptualize our design.  Initially we were going to build out a more complex application, but based on time constraints, decided to readjust our application design and functionality to something more manageable. How we ultimately implemented our user interactions in our code is through a simple interface.  There is a run_helper file which we used to help clean up our run.rb file with helper methods.  There is also another ascii_weather_art file under our lib folder which handles the functionality to provide some ASCII symbols for the corresponding weather icon.
     - Discuss 3 things you learned in the process of working on this project.
     1) We learned how to utilize ActiveRecord and its functionalities in our very own CLI program.
     2) We learned how to build a Command Line Interface which our users could utilize.
     3) We learned how to conceptualize an idea, create a user story, and build out an application.
     - Address, if anything, what you would change or add to what you have today?
     Some features we would have liked to be included (perhaps good ideas for adding features) were usernames and authentication, a functionality to change the location, and a functionality to recommend nearby locations for the given activity (using some sort of API from Yelp, etc.).  Also improving on the design/interface and adding color.
