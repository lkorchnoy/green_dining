class GreenDining::GreenDining
 
 attr_accessor :menu, :location, :zip_code, :volunteer
 attr_reader :name  
 
   # @@all = []

    def initialize(name, menu, location, zip_code, volunteer)
        @name = name
        @menu = []
        @location = location
        @zip_code = zip_code
        @volunteer = []
    end

    

    #green_dining_event = GreenDining::Scraper

    def name
      @name GreenDining::Scraper.jbj_soul_kitchen_scraper
      green_dining[green_dining_info{:name}]
    end

    def location
      GreenDining::Scraper.jbj_soul_kitchen_scraper
      green_dining[green_dining_info{:location}]
    end

    def volunteer
      @volunteer << volunteer
      @volunteer.collect{|volunteer| volunteer == green_dining_event.volunteer}
    end

    def location.find_by_number(zipcode)
      self.all.detect {|zipcode| zipcode.number == number}
    end

    
    end


        



    