 class GreenDining::Scraper

  
  
     def self.get_locations
      doc = Nokogiri::HTML(open("https://jbjsoulkitchen.org"))
      @location_one = doc.search("div.et_pb_blurb_description")[3].children[1].children.text
      @location_two = doc.search("div.et_pb_blurb_description")[7].children[1].children.text
      GreenDining::GreenDining.new(@location_one, @location_two)
     end

     def self.get_menu
      menu = []
      doc_one = Nokogiri::HTML(open('https://jbjsoulkitchen.org/red-bank-menu/'))
      doc_two = Nokogiri::HTML(open('https://jbjsoulkitchen.org/toms-river-menu/'))
      @redbank_menu = doc_one.search("div.entry-content").text.delete("\n,\t").strip
      @tomsriver_menu = doc_two.search("div.et_pb_column").text.delete("\n,\t").strip
      menu << @redbank_menu
      menu << @tomsriver_menu 
    end

     
    end

    


 
 
 
    