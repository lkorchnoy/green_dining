require 'nokogiri'
require 'open-uri'
require 'pry'



  class GreenDining::Scraper

    
    @@doc = Nokogiri::HTML(open("https://jbjsoulkitchen.org"))
    @@red_menu_doc = Nokogiri::HTML(open('https://jbjsoulkitchen.org/red-bank-menu/'))

    def self.scrape_redbank_location
      #@redbank_arr = []
      @@doc.search("div.et_pb_blurb_description")[3].children[1].children.text
    end

    def self.scrape_tomsriver_location
      @@doc.search("div.et_pb_blurb_zadescription")[7].children[1].children.text
    end
      
     def self.scrape_redmenu
      @@red_menu_doc.search("div.entry-content").text.strip
     end

    def self.scrape_tomsmenu
      @@red_menu_doc.search("div.entry-content").text.strip
    end
end

 
 
 
    