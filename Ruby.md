Ruby - Project 3
-----------------

Idea
-----
As curry is my favourite food, I liked the idea of creating a recipe application which displays and shares the different types of curry recipes available. The recipes displayed could be from anywhere with no restrictions. 

The app would have a recipe page which would display the recipes that have been posted by users. Each recipe in term would have it's own page displaying the ingredients, method of that particular recipe.
The idea I had in terms of authentication would be that if a user registers they can display, edit, create and delete their own recipes. If a user is unregistered they can only view recipes.

Planning
----------

Prepartion started with working out how many models would be used in the app. Three models were created, user model for the authentication, a recipe model and a comments model. A comments section where users could add comments on recipes would be an extra feature added potentially to the app.

Database Erb's were created to visually display the models tables and display the database relationships.

Wireframing was used to start to design the layout of the pages, what functionality would be on each page.

I also created user journeys to understand the navigation used in the app and what buttons are required on each page.  

 
Brief timeline of the application build
----------------------------------------

- Planning using database erb's, wireframing for design layout and creating user journeys. 

- The app is built using Ruby on Rails framework, using Active Record for MVC. The models created are user, recipe and comments.

- The start of the build was with authentication being put on the user model which was created using Device. Being able to register and login to the app.

- Through using RESTful Services an edit, new, show and index pages are created and update and delete are provided for functionality of the recipes.

- Content for the app was created through the seeds.rb file to add to the Mongo database, this allowed for front-end design to begin. Bootstrap framework was used and begun to arrange and design the content.   

- A comments model was added to the app, this would allow users on the show recipe page to add recipe comments. Adding a comment would only be enabled if the user is registered. 

- At this point final design changes were being made with colours, fonts and images. 

- Finally the app is deployed with Heroku. 


Challenges
-----------

- Implementing authentication into the app using Device. Up until creating this app I had only used authentication in Sinatra with BCrypt. This was also my first introduction to using a Ruby Gem.

- Using Carrier Wave to upload images. This was another Gem used to upload a profile image in this application. 

- Using a CSS framework like Bootstrap was the first time used in a project. Understanding how to use components to implement into the design layout. For example using the collapsable menu component for the ingredients.  

- Using a NoSQL database, this was first time using this type of database with MongoDB. Becoming familiar with how these types of databases work and are different to using relational databases.

- Using Rails, I had only used the framework Sinatra with Ruby at this point. Mainly with just becoming familiar with the file layout used in Rails, the many types of files it uses. 


Overall views
--------------

I think the colours and fonts work well, there is a consistency in the layout with each of the pages. Usability is clear and efficient for navigating around the app. 

The curry images are a good size and provide enough detail to see each curry visually. 

The specific recipe pages provide a precise, clear breakdown of the ingredients and methods required to make the recipes. The collapsible ingredients menus work particularly well. 

Areas to expand:

- Arranging the curry recipes into categories. A category model could be created in the app to differentiate between the recipes according to their origin in the world. For example curries from India, Sri Lanka and Thailand. This I believe would make the recipes more organised on the app and provide more efficient usability in finding the recipes for the user.

- Another possibility to expand the app could be involving take-aways. Users could find through their location potential curry take-aways in that area. With the recipes information already provided, this could encourage users to try out new curries, add more users to the app.  

Technology used
----------------

HTML
CSS
Ruby on Rails
Device (authentication)
Active Record
Carrier Wave
Insomnia
Bootstrap
MongoDB
Git
MVC
RESTful Services
Heroku



