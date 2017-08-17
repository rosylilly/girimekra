# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

ruby File.read(File.expand_path('../.ruby-version', __FILE__))

gem 'rails', '~> 5.1.3'

gem 'canonical-rails'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'locale_kit'
gem 'meta-tags'
gem 'pg', '~> 0.18'
gem 'premailer-rails'
gem 'puma', '~> 3.7'
gem 'rails-i18n'
gem 'ridgepoler-rails'
gem 'sass-rails', '~> 5.0'
gem 'sitemap_generator'
gem 'slim-rails'
gem 'tzinfo-data'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :development do
  gem 'brakeman', require: false
  gem 'guard', require: false
  gem 'guard-bundler', require: false
  gem 'guard-process', require: false
  gem 'guard-rails', require: false
  gem 'guard-rspec', require: false
  gem 'letter_opener'
  gem 'parser', '~> 2.4.0.x', require: false
  gem 'rubocop', require: false
  gem 'slim_lint', require: false
  gem 'spring-commands-rspec', require: false
end

group :development, :test do
end

group :test do
  gem 'database_cleaner'
  gem 'ffaker'
  gem 'rspec-power_assert'
  gem 'simplecov', require: false
end
