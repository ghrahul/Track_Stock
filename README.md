# Important Notes

* Adding Devise for authentication
   
    In your gemfile, add the devise gem:

    gem 'devise'

    Then run:
    
    bundle install --without production
    
    Then install devise in your application:
    
    rails generate devise:install
    
    rails generate devise User
    
    rake db:migrate to add users table
    
    Add the following line to the application_controller.rb file under app/controllers:
    
    before_action :authenticate_user!
    
    Add a logout link to the homepage which is the index.html.erb view under app/views/welcome folder:
    
    <%= link_to "logout", destroy_user_session_path, method: :delete %>
    
    Add gem 'twitter-bootstrap-rails' in your gemfile and bundle install --without production