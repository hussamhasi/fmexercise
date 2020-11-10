This is a project requested by fluidmeet.
follow the following steps to successfully run the project:
when accessing the respiratory you are supposed to find two projects, a backend project and frontend project
each on different branch, the backend project is located on the main branch and the frontned is on master branch,
after downloading, you'll need to install laravel and setup the enviroment by running these commands
composer install
npm install
php artisan storage:link , to set the correct path for images to be stored and retrieved.
and then the database provided(storage.sql) should be uploaded and setup on your localhost server.
when the database is set, change the .env example file to .env or manually enter the new database to your
.env file, when all is done you should run the following commands to complete the setup:
php artisan passport:install
php artisan key:gen
php artisan optimize
php artisan serve

for the frontned you'll need to install angular by installing node and then runnning 
npm install
ng serve
change the backend url in  angular pages: search in all project about http://127.0.0.1:8000 and change it to your own 
local host.

after installation and setup the project is expected to do the following: 
in the database there are two users already added.
an admin user with the credentials: email: ahmad@gmail.com, password:123456
and a client email with the credentials: email: client@gmail.com, password:123456
after running the app you'll be directed to the login page, if the admin account is entered, you will be redirected to the admin page
which has the list of all companies and the ability to add new company, when pressing the add new company button you will be presented with a form
after filling the data, the company will be created and shown on the admin page with the ability to view or edit, viewing the company redirects you
to the company details page.
in the form there is a map location textbox that need to be filled with google's iframe link that can be retrieved from googlemaps for a certian location
so it shows the map on the company details page.
if logged in with the user account you will be redirected to a page with a search bar and you'll be able to search and click on the companies you searched for
and that will direct you to the company's details page.
