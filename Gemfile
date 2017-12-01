source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

ruby '2.4.2'

gem 'bcrypt', '~> 3.1.7'
gem 'graphql', '~> 1.7', '>= 1.7.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'rack-cors'
gem 'rails', '~> 5.1.4'
# gem 'jbuilder', '~> 2.5'
# gem 'redis', '~> 3.0'
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug', platforms: %I[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 4.8', '>= 4.8.2'
  gem 'faker', '~> 1.8', '>= 1.8.4'
  gem 'minitest-reporters', '~> 1.1', '>= 1.1.18'
end

group :development do
  gem 'guard', '~> 2.14', '>= 2.14.1'
  gem 'guard-minitest', '~> 2.4', '>= 2.4.6'
  gem 'guard-rails', require: false
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'pry-rails', '~> 0.3.6'
  gem 'rails-erd', '~> 1.5', '>= 1.5.2', require: false
  gem 'rubocop', '~> 0.51.0', require: false
  gem 'spring', '~> 2.0', '>= 2.0.2'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'database_cleaner', '~> 1.6', '>= 1.6.2'
  gem 'simplecov', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %I[mingw mswin x64_mingw jruby]
