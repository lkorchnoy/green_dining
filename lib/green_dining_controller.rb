class GreenDining::GreenDiningController
       
        def call

         input = ""
         while input != "exit"
         puts "Welcome to the Green Dining App!"

        puts "To find green dining by name, please enter 'name'."
        puts "To select, please enter 'choice'."
        puts "To find green dining locations, please enter 'locations'."
        puts "To find out the menu, please enter 'menu'."
        puts "To discover green news and opportunities, please enter 'next'."
        puts "To volunteer, please enter 'volunteer'."
        puts "To exit, please type 'exit'."
        puts "What would you like to do?"

        input = gets.strip
        

        case input
        when "name"
          puts "Welcome to JBJ Soul Kitchen Red Bank location"
          puts "Welcome to JBJ Soul Kitchen Toms River location"
          puts "Please select one"
        when "choice"
          choice
        #when "1" 
         # puts "Great choice. Welcome to Red Bank Green Dining"
         #when "2"
         # puts "Great choice. Welcome to Toms River Green Dining"
        when "locations"
          puts GreenDining::Scraper.scrape_redbank_location
          puts GreenDining::Scraper.scrape_tomsriver_location
          puts "would you like the menu?"
          #when user select 1, then you should call Scraper.scrape_menu
        when "menu" 
          puts GreenDining::Scraper.scrape_redmenu
          puts GreenDining::Scraper.scrape_tomsmenu
        when "next"
          what_next
        when "volunteer"
          volunteer
       when "exit"
          goodbye
        end
      end
    end

    
      def choice
        while input != "exit"
        puts "Enter a number"
        when "1"
        input = gets.strip.to_i
        numbers.each {|n| n === "input"}
        puts "#{n}. Great choice. Welcome to Red Bank Green Dining"
        when "2"
        puts "Great choice. Welcome to Toms River Green Dining"
       end
      end
        get_location
      end




    def get_location
     input = gets.strip
     location.each.with_index(1) do |location, i|
     puts "#{i}. #{locations.name}" 
     location = chosen_location[input.to_i - 1]
      binding.pry
     end
    end
    get_user_location
    end
    
    
   def get_user_location
    puts "Choose location to see more details"
    chosen_location = gets.strip.to_i
    show_location_for(location) if valid_input(chosen_location)
   end

   def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end 


   def show_location_for(location)
    puts "You have selected #{location}. Great choice!"
   end
   choice
   end
   
   def get_menu
    get_menu.each do {|menu| menu == location.menu}
      puts "#{menu} for chosen location" 
  end
  end
  show_menu
  end

  def show_menu
    puts "You have selected menu at this location. Great choice!"
  end
  what_next
  end
  
   def what_next
      puts "Are you done? Type 'exit' to exit or hit any key to volunteer."
      @input = gets.strip
    end 
  
    def goodbye
      puts "Enjoy Green Dining!"
    end

  

     
    
     
  
  
  
  
  
  
  
  