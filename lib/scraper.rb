require 'nokogiri'
require 'open-uri'
require 'pry'



  class GreenDining::Scraper
    
    
        
 def self.jbj_soul_kitchen_scraper
    doc = Nokogiri::HTML(open("https://jbjsoulkitchen.org"))
   
    
    jbj_soul_kitchen.css("h2.et_pb_slide_title").collect do |green_dining|
        #green_dining = Green_dining.new(self)
        green_dining = []
        
    green_dining_info = {
    :name => green_dining.css("div.logo_container").text.strip,
    :location_red_bank => green_dining.css("div#locations").text.strip,
    :location_toms_river => green_dining.css("div#locations").text.strip,
    :volunteer => green_dining.css("div.et_pb_row.et_pb_row_23").text.strip,
    :menu_red_bank_url => Nokogiri::HTML(open("https://jbjsoulkitchen.org/red-bank-menu/")),
    :menu_red_bank => green_dining.css("div.entry-content").text.strip,
    :menu_toms_river_url => Nokogiri::HTML(open("https://jbjsoulkitchen.org/toms-river-menu/")),
    :menu_toms_river => green_dining.css("div.entry-content"),
   :green_dining_link => "https://jbjsoulkitchen.org"}
   
    green_dining << green_dining_info
    binding.pry
    end
    green_dining 
end

       

    end