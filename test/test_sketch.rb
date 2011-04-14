require 'sketch'
require 'capybara'
require 'capybara/dsl'
require 'minitest/pride'
require 'minitest/autorun'
begin
  require 'ruby-debug'
rescue LoadError
end

class HelloWorldTest < MiniTest::Unit::TestCase
  include Capybara

  def setup
    Capybara.app = Sketch::App
  end

  def test_hello_world
    visit "/"
    assert page.has_content?("Hello World!")
  end
end
