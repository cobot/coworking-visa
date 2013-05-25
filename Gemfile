source 'https://rubygems.org'

# Server requirements (defaults to WEBrick)
gem 'unicorn'
# gem 'mongrel'

# Project requirements
gem 'rake'
gem 'sinatra-flash', :require => 'sinatra/flash'
gem 'padrino-warden'

# Component requirements
gem 'erubis'
gem 'activerecord', :require => "active_record"
gem 'pg'
gem 'bcrypt-ruby'

# Test requirements
group "test" do
  gem 'rspec'
  gem 'rack-test', :require => "rack/test"
  gem 'capybara'
  gem 'launchy'
  gem 'database_cleaner'
  gem 'webmock'
end

group "development" do
  gem 'foreman'
end

# Padrino Stable Gem
gem 'padrino', '0.10.7'
gem 'tilt', '~> 1.3.0' #bundler dep resolution bug

