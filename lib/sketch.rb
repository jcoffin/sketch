require 'sinatra/base'
require 'mongoid'
require 'sketch/page'

module Sketch
  class App < Sinatra::Base
    set :haml, :format => :html5, :escape_html => true

    configure do
      Mongoid.configure do |config|
        config.master = Mongo::Connection.new.db("sketch")
        config.allow_dynamic_fields = false
      end
    end

    get "/" do
      @page = Page.first
      haml :index
    end
  end
end
