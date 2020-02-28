 class GreenDining::Scraper

  
  
     def self.get_locations
      doc = Nokogiri::HTML(open("https://jbjsoulkitchen.org"))
      # @location_one = doc.search("div.et_pb_blurb_description")[3].children[1].children.text
      # @location_two = doc.search("div.et_pb_blurb_description")[7].children[1].children.text
      locations = doc.css("div#locations")
      dc1 = locations.children[4]
      dc2 = locations.children[10]
      ptags1 = dc1.css('p')
      ptags2 = dc2.css('p')
      name1 = ptags1[0].text
      location1 = ptags1[2].text
      name2 = ptags2[0].text
      location2 = ptags2[2].text
      urlparents = doc.css('div.et_pb_module.et_pb_text.et_pb_text_7')
      links = urlparents.css('a')
      url1 = links[0]["href"]
      url2 = links[1]["href"]
      
      GreenDining::GreenDining.new(name1, location1, url1)
      GreenDining::GreenDining.new(name2, location2, url2)
     end

     def self.get_menu(chosen_location)
     
      doc_one = Nokogiri::HTML(open(chosen_location.url))
     
      menu = doc_one.search("div.entry-content").text.delete("\n,\t").strip
      chosen_location.menu = menu
     
      
    end

     
    end

    


 
 
 
    