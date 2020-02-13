class GreenDining::GreenDiningController
       
  def call 
    binding.pry
         input = ""
         while input != "exit"
        puts "Welcome to the Green Dining App!"

        puts "To find community dining, enter 'green_dining_event'." 
        puts "To find share-a-meal, groceries by location, enter 'location'."
        puts "To donate food, enter 'donate_food'."
        puts "To volunteer, enter 'volunteer'."
        puts "To advocate, enter 'advocate'." 
        puts "To quite, type 'exit'."
        puts "What would you like to do?"

        input = gets.strip

        case input
        when "green_dining_event"
          green_dining_event
        when "location"
          location
        when "donate_food" 
          donate_food
        when "volunteer"
          volunteer
        when "advocate"
          advocate
        when "quite"
          exit
        end
      end
    end
     
    

    

    def green_dining_event
      green_dining_event
    end

    def location
      food.find_by_symbol(zipcode)
    end

    def donate_food
      donate_food
      puts "Thank you for preserving the environment by not wasting food"
    end

    def volunteer
      volunteer
      puts "Thank you for your interest, food rescue hero. Email me at green_dining@yahoo.com"
    end
     
    def advocate
      advocate
      puts "Today, hunger should be a thing of a past. To advocate on social media email green_dining@yahoo.com"
    end

    def exit
      puts "Goodbye!"  
      exit
  end 


      
end