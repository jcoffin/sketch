require 'minitest/pride'
require 'minitest/autorun'
require 'rack/test'
require 'sketch'
begin
  require 'ruby-debug'
rescue LoadError
end

class HelloWorldTest < MiniTest::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sketch::App
  end

  def setup
    get "/"
  end

  def test_root_path
    assert last_response.ok?
  end

  def test_hello_world
    assert_equal "Hello World!", last_response.body
  end

#  def test_X_UA_Compatible_header
#    assert_equal "IE=edge,chrome=1", last_response["X-UA-Compatible"]
#  end
end
