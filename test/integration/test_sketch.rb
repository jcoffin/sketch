require File.expand_path('../test_helper', File.dirname(__FILE__))

class IndexTest < MiniTest::Unit::TestCase
  include Capybara

  def setup
    Capybara.app = Sketch::App
    DatabaseCleaner.clean
    @page = Factory(:home_page)
  end

  def test_root
    visit "/"
    assert find("title").has_content?(@page.title)
  end
end
