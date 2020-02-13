require 'nokogiri'
require 'open-uri'
require 'pry'



  class GreenDining::Scraper
    
    
        
 def self.jbj_soul_kitchen_scraper
    doc = Nokogiri::HTML(open("https://jbjsoulkitchen.org"))
   
    binding.pry
    jbj_soul_kitchen.css("h2.et_pb_slide_title").collect do |green_dining|
        #green_dining = Green_dining.new(self)
        green_dining = []
        
    green_dining_info = {
    :announcements => green_dining.css("h1.announcements").text.strip,
    :todays_menu => green_dining.css("strong").text.strip,
    :volunteer => green_dining.css("h3.et_pb_toggle_title").text.strip,
    :locations => green_dining.css("span.color").text.strip}
   # :green_dining_link => "https://jbjsoulkitchen.org#{g
    green_dining << green_dining_info
    end
    green_dining 
end

       def self.olio_scraper
        doc = Nokogiri::HTML(open("https://olioex.com/"))
        olio.css("div.content").collect do |green_dining|
            @green_dining << green_dining
        green_dining_info = {
        :green_dining_give_food => green_dining.css("div.wpb_wrapper").text.strip,
        :green_dining_get_food =>green_dining.css("h3").text.strip,
         :green_dining_volunteer = > green.dining.css("a.href=https://volunteers.olioex.com/").text.strip,
         :green_dining_app => green_dining.css("a.href=https://apps.apple.com/gb/app/olio-food-sharing-revolution/id1008237086").text.strip
            }
        end
    
        def self.operation_lunch_box_scraper
             doc = Nokogiri::HTML(open("http://www.operationlunchbox.org"))
        end

    end