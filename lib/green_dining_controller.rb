class GreenDining::GreenDiningController

    def initialize
      Green_Dining.new
    end

       def call 
         input = ""
         while input != "exit"
        puts "Welcome to the Green Dining App!"

        puts "To get food, enter 'get food'."
        puts "To give food, enter 'give food'."
        puts "To volunteer, enter 'volunteer'."
        puts "To advocate, enter 'advocate'."
        puts "To quite, type 'exit'."
        puts "What would you like to do?"

        input = gets.strip

        case input
        when "get food"
          get_food
        when "give food"
          give_food
        when "volunteer"
          volunteer
        when "advocate"
          advocate
        end
      end
    end
     
    def get_food
      puts "Would you like to get food?"
      event
    end

    def give_food
      puts "Would you like to donate food?"
      event
    end

    def volunteer
      puts "If you would like to volunteer email me at green_dining@yahoo.com"
    end
     
    def advocate
      puts "If you would like to advocate on social media email me at green_dining@yahoo.com"
    end


      
end