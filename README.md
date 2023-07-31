# News Sharer Project:
 Using Ruby on Rails technologies and the latest versions of the technologies used in this project (as much as possible), I've created a cloud application project that people can share news articles on. People can upvote a post boosting it up to the top of the page or downvote bringing the news post down in the list.

## List of GEMs
* SQLlite3 - used for the project's database. 
[See SQLlite3 information page for latest version etc ](https://www.sqlite.org/index.html)

* Acts As Votable - a GEM to allow upvotes and downowvotes on posts. 
[See Acts_As_Votable Github page for more information on this GEM](https://github.com/ryanto/acts_as_votable)

* Devise - A GEM for user creation and user login
[See Devise Github page for more information on this GEM](https://github.com/heartcombo/devise)

[See Devise RubyGems.org page for GEM installation](https://rubygems.org/gems/devise/versions/4.9.2)

* Bootstrap 5.3 -  Bootstrap is a CSS framework to stylise the web pages
[See Bootstrap Github page for more information on this GEM](https://github.com/twbs/bootstrap-rubygem)


* Custom GEM - Custom GEM to sort the homepage feed where the more upvotes than vote gets bumped up to the top of the feed [See GEM](./lib/newsSharerCustomFeedGem/)


# Demonstration  
## User Registeration 
This is a demostration of user creation working.  Therefore new news can be made and automatically 
logged in to post or view other posts. 
![User Registeration](Misc/Register.gif)

## User Login 
The user can also login if they are logged out or choose to logout. 
![User Login](Misc/Login.gif)

## User Creating A News Post 
Creating a new post is easy. You access the main homepage and add the data to the relative fields 
and post using, "submit 
![News Post Creation](Misc/Create-Post.gif)

## Post Organised By Upvotes 
By creating a new news post, I check that it's below the post with one upvote, this shows that posts with less upvotes will be pushed below other posts. 
![Posts Organised By Upvotes](Misc/Post-Shown-By-Most-Upvotes.gif)

## Post Edit
We can edit the post data, maybe the title is too long or the user selected the wrong category, we can edit any post by the user that is logged in. 
![Post Edit](Misc/Edit-Post.gif)

## Post Deletion 
If the user doesn't like the post they made, they can delete the post, however, currently you need to refresh to update the page on the post being deleted
![Post Deletion](Misc/Delete-Post.gif)







## Important Information:

### Ruby version
* 3.2.2 (2023-03-30 revision e51014f9c0)

### Database
* SQLite version: 1.6.3


### System dependencies
#### External Gems
SQLite3 for the database
Acts As Votable to create votable posts
Devise for creating user registration and login
Bootstrap 5.3 for CSS design

#### Custom Gem
NewsSharerCustomFeedGem is used to sort the posts to
display on the homepage

[Go to List of GEMs for full list and sources](#list-of-gems)

### Installation

1. Clone the repository: `git clone https://github.com/JohnMichaelCrawley/News-Sharer-Project.git`
2. Change into the project directory: `cd News-Sharer-Project`
3. Install rbenv: If you don't have rbenv installed on your system, follow the instructions for your operating system:
**MacOS: You can use Homebrew to install rbenv:**
`brew install rbenv`
**Linux (Ubuntu/Debian): Use apt-get to install rbenv:**
`sudo apt-get update`
`sudo apt-get install rbenv`
**Windows: Follow the instructions in the rbenv documentation:**
`https://github.com/rbenv/rbenv#installation`
4. Install Ruby 3.2.2: Once rbenv is installed, you can use it to install Ruby 3.2.2:
`rbenv install 3.2.2`
6. Set the local Ruby version: Now that Ruby 3.2.2 is installed, you need to set it as the local version for this project. This will ensure that the correct version is used when you work on this project.
`rbenv local 3.2.2`
6. Install Bundler: Bundler is a Ruby gem that manages project dependencies. You need it to install the required gems for the Rails project.
`gem install bundler`
7. Install project dependencies: Now, you can install the required gems for your Rails project using Bundler.
`bundle install`
8. Set up the database: Depending if the project has problems with the database, you might need to set up the database. You can run the following commands to create, migrate, and seed the database:
```
rails db:create      # Create the database (if it doesn't exist)

rails db:migrate     # Run database migrations

rails db:seed        # (optional) Seed the database with initial data
```


9. Start the Rails server: Finally, you can start the Rails server and access the application in the browser.
`rails server`

10. The URL for the project might be: `localhost:3000`


### Deployment instructions
If you want to include deployment instructions for your project, specify the steps required to deploy it to a production server. You can explain how to set up the project on a hosting platform or server.
