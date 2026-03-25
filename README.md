# README

This README would normally document whatever steps are necessary to get the
application up and running.
Things you may want to cover:

* Ruby version
* System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions
* ...

## Dataset Description
This project uses a database created using Ruby on Rails to store and manage all the information for the application.

### What is a Dataset?
A dataset is a collection of data that is organized into tables. Each table stores a specific type of information, and all tables are connected to each other.

### Tables Used in This Project:
1. Users
This table stores information about users of the website, such as their name and email.
2. Products
This table stores details about products, including name, description, and price.
3. Categories
This table is used to organize products into different groups (for example: electronics, clothing, etc.).
4. Orders
This table stores information about purchases made by users.

### Data Source:
The data used in this project is created using the Rails seeds file (db/seeds.rb). This means the data is generated for testing and demonstration purposes.

### Relationships Between Tables:
- A User can have many Orders
- Each Order belongs to one User
- A Product belongs to one Category
- A Category can have many Products

### Why This Dataset is Used:
This dataset helps simulate a real-world e-commerce system. It allows users to browse products, view categories, and place orders.

The relationships between tables make it easy to connect data and display meaningful information in the application.

# how to create table
rails generate model user name:string email:string

rails db:migrate
rails db:seed

Database is created using Rails migrations by running rails db:migrate.

## Data Source

The data used in this project is internally generated.

It is created using the Rails seeds file (db/seeds.rb), where sample data is added manually for testing and demonstration purposes.

No external API or dataset is used in this project.

## Active Record (AR) Model

An Active Record (AR) model in Ruby on Rails represents a table in the database.

Each model is connected to a specific table and is used to perform operations such as creating, reading, updating, and deleting data.

For example, the User model represents the users table in the database.

Active Record also allows defining relationships between tables, such as one-to-many and many-to-many associations.
# At least one association
One User → many Orders
Each Order → one User
# Validation
Validation checks if data is correct before saving it in the database.
# Hierarchal Navigation
Hierarchical navigation = navigating from category → items → details
# Valid HTML
Valid HTML = correct, error-free HTML code
## Bootstrap Grid
Bootstrap Grid is used in this project to create a responsive layout.