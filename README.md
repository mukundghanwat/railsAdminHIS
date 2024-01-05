# RailsAdminHIS
This is Rails admin application to show database data on UI format

# Ruby version
	ruby 3.2.2 (2023-03-30 revision e51014f9c0) [x64-mingw-ucrt]

# Rails version
	Rails 7.1.2

# Bunlde Installatin Command
	rails bundle install

# Database all table fetching command
	rails db:migrate
# Application Run command
	rails server
	
# For Database setup required below command below mysql-connector-c-6.1.11-winx64 zip connector need to store any folder in system and provide there path like below
	gem install mysql2 -- '--with-mysql-lib="C:\Users\mukund.ghanwat\Downloads\mysql-connector-c-6.1.11-winx64\lib" --with-mysql-lib="C:\Users\mukund.ghanwat\Downloads\mysql-connector-c-6.1.11-winx64\include"'
	
# Create model with existing table
	rails g model "mode_name" --skip-migration
	  
# Note
	required every table name end with "s".



