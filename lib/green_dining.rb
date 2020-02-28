class GreenDining::GreenDining

  
    attr_accessor :location_one, :location_two, :menu
    
    @@all = []
     
    def initialize(location_one, location_two)
      @location_one = location_one
      @location_two = location_two
      @@all << self
    end 

    def self.find(user_input)
      @@all[user_input.to_i - 1]
    end

    def self.all 
      @@all 
    end

  end
  
    

    

   

    

    
    

   
  


    
  

    

    

    

    
    

    
      
      
      
      
     

        



    