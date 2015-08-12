# Prototyping


Rails 4.2 example application that provides GDS Admin layout, with basic
admin functionality to enable fast prototyping of backend views
 
Includes :
 
The GovUK admin template :  https://github.com/alphagov/govuk_admin_template

* "Devise" : https://github.com/plataformatec/devise (user management)
* "Bootstrap" : http://getbootstrap.com/


Use this application to prototype static views (pages)
 
Drop .html.erb pages into app/views/pages

## Installation

Fork or clone the project locally


## Installation

cd into the project and install dependencies as usual :
 
```ruby
bundle install
```

Now run standard rails commands to get the DB setup and you're good to go.

```ruby
rake db:migrate
rake db:seed
```

## Basic Configuration

###  Seed data

Run ```rake db:seed``` to populate Db with some sample Users.

To change or add to the sample set, edit 
```
db/seeds.rb
```

To truncate and reseed the DB
 
```
rake db:reset
``` 

## Layout

As well as static pages, you can use content_for hooks to inject content into 
in the GDS template. See the README for details  of the available content blocks
here : https://github.com/alphagov/govuk_admin_template
 
 e.g
 
```ruby
<% content_for ::navbar_right do %>
    <div>Some text for over there
<% end %>
```

## Contributing to this project

If you have an idea you'd like to contribute please log an issue.

All contributions should be submitted via a pull request.

## License

The Open Government Licence (OGL) is currently applied to this project. The OGL was developed by the Controller of Her Majesty's Stationery Office (HMSO) to enable information providers in the public sector to license the use and re-use of their information under a common open licence.

It is designed to encourage use and re-use of information freely and flexibly, with only a few conditions.

If you feel the OGL is blocking you from using this project please submit an issue telling us why and we'll do our best to help you.
