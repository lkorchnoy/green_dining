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

end
