LINK : hafizh.surya-kangzenstore.pbp.cs.ui.ac.id

Explain how you implemented the checklist above step-by-step (not just following the tutorial).

Project Setup: Initiated a new Django project by running django-admin startproject mysite.
App Creation: Created a new application within the project using python manage.py startapp myapp.
Database Configuration: Configured settings.py to connect to a PostgreSQL database for production and SQLite for development.
Model Development: Defined models in models.py to represent the data structures needed for the application.
Admin Interface: Registered models with the Django admin site to make them accessible through the Django admin interface.
View Logic: Implemented view functions in views.py that handle different routes' logic and data processing.
URL Mapping: Set up URL configurations in urls.py to route requests to the appropriate views.
Templates: Created HTML templates to render data sent from views.
Testing and Debugging: Wrote tests for views and models and used Django's debugging tools to ensure everything works as expected.
Deployment: Deployed the application on a cloud platform, setting up environment variables and ensuring security settings.

Explain the use of git in software development!

Git is a tool that helps us keep track of changes in the project. It's like a history book that lets us see past changes, try out new ideas without messing up the main project, and work with others easily. It's very important for making sure everything goes smoothly and safely when many people are working together.

In your opinion, out of all the frameworks available, why is Django used as the starting point for learning software development?

Django is great for beginners because it has everything you need to build a website all in one place. It’s also well-explained through lots of guides and has a big group of people who can help you learn and solve problems. This makes it easier to start building websites quickly.

Why is the Django model called an ORM?

ORM stands for Object-Relational Mapping. In Django, it means you can work with the database using Python code instead of having to write complicated database queries. This makes it safer and easier to get data in and out of the database.