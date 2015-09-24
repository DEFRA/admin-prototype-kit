source 'https://rubygems.org'

ruby '2.2.2'

gem 'rails', '4.2.0'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

# Prototype Kit Specifics

# Provided by thoughtbot - Rails engine for static pages.
# https://github.com/thoughtbot/high_voltage
gem 'high_voltage', '~>2.4.0'
gem 'govuk_admin_template', '1.0.0'

group :development do
  gem 'better_errors'
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'rspec-rails'
end

group :production do
  # This prototyping kit is not intended for production
end
