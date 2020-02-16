class GreenDining::GreenDining

  
    attr_accessor :name, :menu, :location, :volunteer
    
    @@all = []
     
    def initialize(name)
      @name = name
      @menu = menu
      @location = location
      @volunteer = volunteer
      save
    end 
    

    def self.all 
      @@all 
    end

    

    

   

    def get_details
      GreenDining::Scraper.jbj_soul_kitchen_scraper
    end 

    def name
      @name = GreenDining::Scraper.jbj_soul_kitchen_scraper
      green_dining[green_dining_info{:name}]
    end

    def location
      GreenDining::Scraper.jbj_soul_kitchen_scraper
      green_dining[green_dining_info{:location}]
    end

    def volunteer
      @volunteer << volunteer
      @volunteer.collect{|volunteer| volunteer == green_dining.volunteer}
    end

    def self.find_by_number(zipcode)
      self.all.detect {|zipcode| zipcode.number == number}
    end

   
  end 


    
  

    

    

    

    
    

    
      
      
      
      
     

        



    