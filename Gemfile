source 'http://rubygems.org'
ruby '2.1.0'

gem 'sinatra'
gem 'thin'

group :production do
  gem 'newrelic_rpm'
end

group :test, :development do
	gem 'capybara'
	gem 'cucumber'
	gem 'cucumber-sinatra'
	gem 'launchy'
	gem 'rake'
	gem 'rspec'
	gem 'shotgun'
end