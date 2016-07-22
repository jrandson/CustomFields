This application was developed on Debian 8 with Ruby on Rails.  To run this application locally, you must have installed 

## Getting Started

1.Install Ruby 2.2.4 follwing running this commands on terminal prompt install curl:
    $ apt-get install curl
	
	Install RVM:
 		  $ gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
	 	  $ curl -sSL https://get.rvm.io | bash -s stable
		  $ source /etc/profile.d/rvm.sh

	Install ruby dependencies
		$ rvm requirements
	Install Ruby:
		$  rvm install 2.2.4

	Setup ruby version:
		  $ rvm use 2.2.4 --default
	Check ruby version
		  $ ruby --version


2. Install Rails 5.0 by following these  steps:
		  $ gem install rails
		  $ rails -v
	Choose the version you want. I recoent the 5.0 one
	    $ gem install rails --version=5.0


3. Install PostgreSQL 9.4

On terminal run :
 		$ sudo apt-get update
	Then install postgre 9.4  as well the postgressql-cliente-9.4:
		$ sudo apt-get install postgresql-9.4 postgresql-client-9.4
	
	Configuring postgreSQL

		Create a user:
			$ sudo -u postgres createuser -s pguser

	Enter to the postgreSQL prompt as the new user
	    postgres=#  \password pguser a
	
	at the prompt, to create a password 
	
	Exit the postgreSQL console:
 		postgres=#  \q

4. Copy the repository for your local machine:

On the terminal, run : git clone https://github.com/jrandson/desafio_rd.git


Move into the application directory:
$ cd desafio_rd
	$ rails server


By using the web browser, go to  http://localhost:3000 to start creating your custom contact form