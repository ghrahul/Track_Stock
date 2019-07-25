##[Using Rails 5](https://github.com/ghrahul/Track-Stock-rails-5)

## [Demo](https://youtu.be/IkusfHjZD5Y)

# What has been used?

  * Rails 4.2.5
  * ruby 2.3.4p301 
  * Cloud9 ide

# How to set up?

  * clone the project in a rails workspace in Cloud9
  * run "rake db:migrate"
  * Then to run the server type "rails s -b $IP -p $PORT"
  

# App Specification

* Models

  * Stock

* Database Tables
  
  * stocks : Id, ticker, name, last_price
  * user_stocks : user_id, stocks_id -> This is a many_to_many association.
  * friendships : user_id, friend_id -> many-to-many association.

# Important Notes

* Adding Devise for authentication
   
    * In your gemfile, add the devise gem:

    * gem 'devise'

    * Then run:
    
    * bundle install --without production
    
    * Then install devise in your application:
    
    * rails generate devise:install
    
    * rails generate devise User
    
    * rake db:migrate to add users table
    
    * Add the following line to the application_controller.rb file under app/controllers:
    
    * before_action :authenticate_user!
    
    * Add a logout link to the homepage which is the index.html.erb view under app/views/welcome folder:
    
    * <%= link_to "logout", destroy_user_session_path, method: :delete %>
    
    * Add gem 'twitter-bootstrap-rails' in your gemfile and bundle install --without production
    
* 'rails g model Stock tcker:string name:string last_price:decimal' to generate stock model.
* 'StockQuote::Stock.quote('GOOG').close' to checkout the closing price of stocks.
* ' rails generate model UserStock user:references stock:references' to generate userStock model.
* ' rails generate controller UserStocks' to generate controller.
