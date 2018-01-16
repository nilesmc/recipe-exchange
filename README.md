# README
Recipe Exchange

A social network for cooks.

Demo project for decomposition of monolith into services.


## Dependencies

brew install imagemagick, postgresql


You might have to do

```
brew unlink imagemagick
brew install imagemagick@6 && brew link imagemagick@6 --force

```

Install FAE - Rails CMS engine

```
rails g fae:install
```


Then seed the users for FAE
```
rails fae:seed_db
```



Steps I used to create application:

```
rails generate devise:install
rails generate devise Webser
rails db:migrate
```

## Process

* Document what I'm doing for a future blog post
* Build a Rails monolith
* Break it up into a handful of services
* Use some fun new modern tools in the process
