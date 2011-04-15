require File.expand_path('../test_helper', File.dirname(__FILE__))

class PageTest < MiniTest::Unit::TestCase
  def setup
    DatabaseCleaner.clean
    @page = Factory(:page)
  end

  def test_title_attr
    assert @page.respond_to?(:title)
  end
end
