require 'nokogiri'
require 'open-uri'
require 'pry'



  class GreenDining::Scraper

  
    @@doc = Nokogiri::HTML(open("https://jbjsoulkitchen.org"))
    @@red_menu_doc = Nokogiri::HTML(open('https://jbjsoulkitchen.org/red-bank-menu/'))
    @@toms_menu_doc = Nokogiri::HTML(open('https://jbjsoulkitchen.org/toms-river-menu/'))

    def self.scrape_redbank_location
      @@doc.search("div.et_pb_blurb_description")[3].children[1].children.text

    end

    def self.scrape_tomsriver_location
      
      @@doc.search("div.et_pb_blurb_description")[7].children[1].children.text
      
    end
      
     def self.scrape_redbank_menu
      @@red_menu_doc.search("div.entry-content").text.delete("\n,\t").strip
    end

    def self.scrape_tomsriver_menu
      @@toms_menu_doc.search("div.et_pb_column").text.delete("\n,\t")
    end
end

 
 
 
    