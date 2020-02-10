require 'nokogiri'
require 'open-uri'
require 'pry'
require_all './lib'


class GreenDining::Scraper
    #def get_page
        

    def self.scrape_dining 
        doc = Nokogiri::HTML(open("https://jbjsoulkitchen.org"))
        binding.pry
            dining_event = self.new
            dining.main = doc.search("h2.et_pb_slide_title").text 
            dining.menu_red_bank = doc.search("article.post-1229").text
            dining.menu_toms_river = doc.search("div.entry-content").text
    end
end


                