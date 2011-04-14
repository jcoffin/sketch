require 'sinatra/base'

module Sketch
  class App < Sinatra::Base
    get "/" do
      "Hello World!"
    end
  end
end
