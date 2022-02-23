# HR employee administration system
## Description
It is a simple web app for HR employee administration system developed by Ruby on Rails. It performs basic CRUD operations on five models [Users, Employees, Teams, Divisions, Targets]. The user should sign up or login to see all website features. Once the user registered, we send welcome email for the user's email. The user can upload a picture for profile

## Dependencies
This project was implemented using the Rails framework. So, if you want to run this project locally you need to have version 7.0.1 of Rails and you also need to have Ruby version 3.0.3. You also need to have Sqlite version 1.4. You also need to install MailHog.

### Installation
Once you have all the dependencies installed. Run these commands in the terminal.
```
bundle install
```
Bundle is install all dependencies that are required in this app to run.
Once done, run the following command to prepare the Database.
```
rails db:migrate
```
Run the following command to install MailHog
```
brew update && brew install mailhog 
```

## Running
At this point, the app is ready to be running. Run the following command to start the Rails server.

```
rails s 
```
or 
```
rails server
```
start MailHog with:
```
mailhog
```

Open your browser at "localhost:3000".


## Screenshots
### Send a welcome email for new registers
![user](https://user-images.githubusercontent.com/48870279/155396026-a2d3d7e6-b77a-4ee6-abb5-5562f54c9db8.png)