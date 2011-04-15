require 'sketch'
require 'capybara'
require 'capybara/dsl'
require 'minitest/pride'
require 'minitest/autorun'
require 'factory_girl'
require 'database_cleaner'

begin
  require 'ruby-debug'
rescue LoadError
end

Factory.find_definitions

