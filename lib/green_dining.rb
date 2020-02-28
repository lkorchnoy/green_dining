class GreenDining::GreenDining

  
    attr_accessor :name, :location, :url, :menu
    
    @@all = []
     
    def initialize(name, location, url)
      @name = name
      @location = location
      @url = url
      @@all << self
    end 

    def self.find(user_input)
      @@all[user_input.to_i - 1]
    end

    def self.all 
      @@all 
    end

  end
  
    

    

   

    

    
    

   
  


    
  

    

    

    

    
    

    
      
      
      
      
     

        



    