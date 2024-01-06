<p align="center">
  <h1 align="center"> Search App
 </h1>
  
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

## 🚀 Live Version <a name="live-demo"></a>

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

1. **Clone the Repository:**
   - Copy this link `https://github.com/memicelis/search-analytics`.
   - Open the command prompt in the directory where you want to clone the repository.
   - Run the following command to clone the repository:

     ```
     git clone https://github.com/memicelis/search-analytics
     ```

2. **Navigate to the Repository:**
   - Move into the cloned repository directory:

     ```
     cd search-analytics
     ```

3. **Install Required Gems:**
   - Install all required gems using the following command:

     ```
     bundle install
     ```

4. **Check and Update Ruby Version (if needed):**
   - Navigate to the `.rbenv` file and change the Ruby version if it's below 3.2.1.

     ```
     # Navigate to the .rbenv file and update Ruby version if needed
     ```

5. **Check and Configure PostgreSQL:**
   - Check your PostgreSQL version and update the configuration in `config/database.yml` accordingly.

     ```
     # Check PostgreSQL version and update configuration
     ```

6. **Set Up the Database:**
   - Run the following command to create, migrate, and seed the database:

     ```
     rails db:create db:migrate db:seed
     ```

7. **Start the Rails Server:**
   - Start the Rails server with the following command:

     ```
     rails s
     ```

8. **Run RSpec Tests:**
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
