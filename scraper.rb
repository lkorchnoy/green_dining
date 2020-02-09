require 'nokogiri'
require 'open-uri'
require 'pry'
require_all './lib'


class GreenDining::Scraper

    def get_page
        Nokogiri::HTML(open("http"))
    end

    def person_get_food
    end

    def person_give_food
    end

end