# README - FITSAPP Ruby on Rails Test

## Features covered

- Three kind of users: users, trainers (created with Single Table Inheritance) and admin (just a boolean type in user model).
- Each of these has the ability to log into the website through authentication (devise).
- Once signed in, they can see the front page Chat List with already opened chats and button New chat.
- Clicking on open you see all the messages in which the logged client is involved.
- Then, you can click over ‘New chat’ and you are given a form to send a new message.
- In the form you have to select the receiver (either a user or a trainer).
- Editing and deleting messages isn’t allowed by users or trainers.
- Data management work is done by the admin via rails_admin dashboard. (cancancan + rails_admin).
- bonus: messages have status read or non read untill they are opened by the recipient

## Stack used in this project:

* Backend: Ruby 2.3.0, Rails 5.0.2

* Frontend: Bootstrap

* Database: PostgreSQL 9.6.1

* Authorization: Devise, Cancancan

* Backoffice: Rails_admin

## Installation

Grab the latest code version from GitHub:

> git clone https://github.com/borgesbiel/fitsapp.git

## Install the gems

> bundle install

## Generating data

> rails db:create db:migrate db:seed

When you run the command above (rails db:seed) will invoke the creation of one Admin, two Users, two Trainers and two Conversations

## Run it

> rails s

## Sample workflow to cover the app features

### Login and reply new message

Login with email: trainer@gmail.com, password: abc123

You will see in  Chat List page a new (and non read status) message for you from user@gmail.com

You click on open and you will be redirected to the chat page

There you can reply the message

And to check the reply

Login with email: user@gmail.com, password: abc123

You will see in Chat List page a new (and non read status) message for you from trainer@gmail.com


### Login and New Chat

Login with email: user2@gmail.com, password: abc123

In Chat List page you click on New Chat

Click on New Chat! button from the respective user you want to chat (users that are already involved in chat with you will be not displayed, they are in Chat List page)

There you can send the message

Go back to Home page and see that you have a new chat

## Data management via Rails admin

With rails_admin gem, i could provide a full data management dashboard for a user of type Admin

The Dashboard will be at the route: /admin

## Accessing Admin Dashboard

http://localhost:3000/admin

email: admin@gmail.com

password: abc123

## Heroku

My app is hosted on Heroku.

https://fitsapptest.herokuapp.com/
