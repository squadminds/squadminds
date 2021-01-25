source('https://rubygems.org')
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby('2.7.0')
gem 'rails', '~> 5.2.2'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'mini_magick', '~> 4.8'
gem 'bootsnap', '>= 1.1.0', require: false

# RSpec
gem 'rspec', '~> 3.0'

group(:development, :test) do
  gem 'byebug', platforms: %i(mri mingw x64_mingw)
  gem 'dotenv-rails'
end

group(:development) do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'letter_opener'
  gem 'rubocop', '~> 0.49.1'
  gem 'rubocop-rspec', '~> 1.10.0'
  gem 'rails-erd'
end

group(:test) do
  gem 'rspec-rails', '~> 3.8'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'shoulda-matchers'
  gem 'rspec_api_documentation'
end

gem 'tzinfo-data', platforms: %i(mingw mswin x64_mingw jruby)

gem 'jquery-rails'
gem 'bootstrap-sass', '~> 3.4.1'
gem 'sassc-rails', '>= 2.1.0'
gem 'slim-rails'
gem 'autoprefixer-rails'
gem 'font-awesome-sass', '~> 5.6.1'
gem 'modernizr-rails'

gem 'devise'
gem 'pundit'

gem 'sentry-raven'
gem 'sidekiq'
