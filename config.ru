# vim: syntax=Ruby

require 'bundler'
Bundler.require(:default, ENV['RACK_ENV'].to_sym)
require "sketch"

run Sketch::App
