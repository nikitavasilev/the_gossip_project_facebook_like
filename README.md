# Database with Rails - PostGreSQL - The Gossip Project - Final Version

This work was done as a project for [The Hacking Project Bootcamp](https://www.thehackingproject.org/).

[Click here](https://thegossip-project-fb-like.herokuapp.com/) to check the live version of the app.
The goal was to learn the basics of the Database with Rails and build an SQL database of a Facebook like app with the main functionalities of the app using PostGreSQL and then deploy it on Heroku. The main functionalities are posting content, liking, commenting, user authentification with Devise gem, etc.

## Requirements

You need at least ruby 2.5.1, rails 5.2.1 and bundler installed on your computer.

1. First of all `git clone the repo`
2. Run `$ cd the_gossip_project_facebook_like`
3. Run `$ bundle install`
4. Run `$ rails db:migrate`
5. Run `$ rake db:reset` which gonna clean all the cells of our database, and create brand new tables along with our `seeds.rb` file
6. Run `$ rails server` to deploy the app in local
7. Open your browser, and type: `http://localhost:3000`
8. To play with the database run `$ rails console`

# Contributions

This project was build with the help of:
* [Nikita Vasilev](https://github.com/nikitavasilev)
* [Arthur Mansuy](https://github.com/tutus06)
* [Nathaniel Debache](https://github.com/Natdenice)
* [Thomas Charvet](https://github.com/TomacTh)
* [Ysaline Macé](https://github.com/Ysalien)

## Contact

Problems or questions? File an issue at [GitHub](https://github.com/nikitavasilev/the_gossip_project_facebook_like/issues).