# My Sinatra template

This is just my small Sinatra template to start something with it which is still not
finished. This was also intended to be my MongoDB test ground for some small scraping project
with a few users.

Things learned: rack stack, Sinatra basics and setup, console to test some written code.

- Stuff which are not here are:

	* Place where to put models
	* Database connection
	* Session handling for logged in users
	* Which layout to use (I couldn't decide to use Mongo ORM or write with pure Mongo lib) was a hard choice so it's not included as well :)

### Running the project

* Console

		rake console
		
* Web through rack

		rackup -p 9000
		
Production and logging are still not done because, well it never got to production :)
