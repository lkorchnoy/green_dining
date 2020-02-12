require_relative "./green_dining/version"
require 'pry'
require 'nokogiri'
require_relative './lib/environment'
require_relative './advocate.rb'
require_relative './food.rb'
require_relative './green_dining_controller.rb'
require_relative './green_dining.rb'
require_relative './person.rb'
require_relative './scraper.rb'
require_relative './volunteer.rb'

module GreenDining
  class Error < StandardError; end
  # Your code goes here...
end
