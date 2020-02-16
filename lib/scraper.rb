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
    
      @@red_menu_doc.search()
     end

    def self.scrape_tomsmenu
      page_url = 'https://jbjsoulkitchen.org/toms-river-menu/'
      @info_url = 'http://'
      doc = Nokogiri::HTML(open("https://jbjsoulkitchen.org/toms-river-menu/"))
      @tomsmenu_arr = []
      doc.css('ul li').each do |menu|
        @tomsmenu_arr << menu.text
        @tomsmenu_menus = @tomsmenu_arr[]
      end
    end
end

 
 
 
    