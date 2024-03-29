<a name="readme-top"></a>

<h1 align="center">Search App</h1>

<br>

## Table of Contents
- [What is Search App?](#what-is-search-app)
- [Key Features](#key-features)
- [Live Version](#live-version)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Gems](#gems)
  - [Installation Documentation](#installation-documentation)
- [Search Analytics](#search-analytics)
  - [Clone the Repository](#clone-the-repository)
  - [Navigate to the Repository](#navigate-to-the-repository)
  - [Install Required Gems](#install-required-gems)
  - [Check and Update Ruby Version (if needed)](#check-and-update-ruby-version-if-needed)
  - [Check and Configure PostgreSQL](#check-and-configure-postgresql)
  - [Set Up the Database](#set-up-the-database)
  - [Start the Rails Server](#start-the-rails-server)
  - [Run RSpec Tests](#run-rspec-tests)
- [Example](#example)

<br>

## What is Search App?
The Search App is a web application crafted with the Ruby on Rails framework, providing users with the ability to effortlessly search for articles. Its interface is designed to be clean and user-friendly, featuring a prominent search bar in the header where users can input their search queries.

 <hr>

 ## Key Features
 - Fast search functionality
 - User identification using IP address
 - Analytics of most searched items
 - Thorough RSpec testing 

 
 <hr>

<br>

## 🚀 Live Version <a name="live-version"></a>

- [Search App](https://blooming-savannah-66747-1bf93ed5f8b9.herokuapp.com/)

<br>

## Getting Started

Application was build in [Rails](https://rubyonrails.org/) application.

### Prerequisites

- [Ruby](https://www.ruby-lang.org/en/): Recommended using 3.2.1 version.

- [Rails](https://yarnpkg.com/): Recommended using 7.0.4.3 version.

- [PostgreSQL](https://www.postgresql.org/) 12.14 or higher.

### Gems
- [Turbo Rails](https://github.com/hotwired/turbo-rails)
- [Fuzzy String Match](https://github.com/kiyoka/fuzzy-string-match) 
- [RSpec Rails](https://github.com/rspec/rspec-rails) 

### Installation Documentation

# Search Analytics

Follow these steps to set up and run the Search Analytics project:

1. **Clone the Repository:** <a name="clone-the-repository"></a>
   - Copy this link `https://github.com/memicelis/search-analytics`.
   - Open the command prompt in the directory where you want to clone the repository.
   - Run the following command to clone the repository:

     ```
     git clone https://github.com/memicelis/search-analytics
     ```

2. **Navigate to the Repository:** <a name="navigate-to-the-repository"></a>
   - Move into the cloned repository directory:

     ```
     cd search-analytics
     ```

3. **Install Required Gems:** <a name="install-required-gems"></a>
   - Install all required gems using the following command:

     ```
     bundle install
     ```

4. **Check and Update Ruby Version (if needed):** <a name="check-and-update-ruby-version-if-needed"></a>
   - Navigate to the `.rbenv` file and change the Ruby version if it's below 3.2.1.

     ```
     # Navigate to the .rbenv file and update Ruby version if needed
     ```

5. **Check and Configure PostgreSQL:** <a name="check-and-configure-postgresql"></a>
   - Check your PostgreSQL version and update the configuration in `config/database.yml` accordingly.

     ```
     # Check PostgreSQL version and update configuration
     ```

6. **Set Up the Database:** <a name="set-up-the-database"></a>
   - Run the following command to create, migrate, and seed the database:

     ```
     rails db:create db:migrate db:seed
     ```

7. **Start the Rails Server:** <a name="start-the-rails-server"></a>
   - Start the Rails server with the following command:

     ```
     rails s
     ```

8. **Run RSpec Tests:** <a name="run-rspec-tests"></a>
   - Run RSpec tests to ensure everything is set up correctly:

     ```
     rspec
     ```

These steps provide a clear guide for setting up and running the Search Analytics project.


<hr>

## Example

 Example of user searches:

- What
- What is a
- What is a good car?

Search engine records only: What is a good car?

 <hr>

<p align="center">
  <strong>Search App</strong> 
</p>
