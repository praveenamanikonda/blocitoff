## Blocitoff: Blocitoff is a self destructing todo list application.  

Made with my mentor at [Bolc] (http://bloc.io).

About Blocitoff: The Blocitoff app allows users to create manageable todo lists where each list will have tasks to be completed in 7 days. you can mark tasks as completed as its status. If the task is not important enough to be completed in 7days , then it doesn't belong to the todo list.The app has password-secured accounts, login/logout , User Authorization i.e ability to create/edit/delete lists , tasks.

This README would normally document whatever steps are necessary to get the
application up and running.

Ruby Version : rails 4.1.0

To view the app:
  start Rails server : rails s 
  Visit 'https://localhost:3000/'
  
To check app's available routes : rake routes 

Database creation : The development and production environments have different databases. Update your gem file such that it has the following:
  group :production do 
    gem 'pg'
    gem 'rails_12factor'
  end 

  group :development do 
    gem 'sqlite3'
  end 
  
  group :development, :test do
   gem 'rspec-rails', '~> 3.0'
   gem 'factory_girl_rails', '~> 4.0'
  end
  
Configuring production : 
  To configure email functionality for this app , you need to addon 'Sendgrid' on production. 
  Command for configuring : 
    heroku addons:create sendgrid:starter
    
Gems required for this app: 
 gem 'bootstrap-saas'
 gem 'faker'
 gem 'devise'
 gem 'figaro'


 
