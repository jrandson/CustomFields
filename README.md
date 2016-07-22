#CustomFields#
CustomFields is a Ruby on Rails application that allows you to create a contact list with your own cutom filds. 

To use CustomFields you need have istall Ruby 2.2.4 and Rails 5.0 in your machine. If you didn't this yeat. Follow the estpes bellow:

## Getting Started

1. Install Ruby 2.2.4 by running this commands on terminal prompt:

	Install curl:

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
		
	if something go wrong try this
	
		$ sudo apt-get install build-essential


2. Install Rails 5.0 by following these  steps:
		  
		$ gem install rails
		$ rails -v
	
	Choose the version you want. I recomend the 5.0 one
	    $ gem install rails --version=5.0



3. Copy the repository for your local machine:

	On the terminal, run : git clone https://github.com/jrandson/desafio_rd.git


	Move into the application directory:
		
		$ cd desafio_rd
		$ bundle update
		$ rails server


	By using the web browser, go to  http://localhost:3000 to start creating your custom contact form
