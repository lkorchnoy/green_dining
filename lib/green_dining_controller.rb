class GreenDining::GreenDiningController
       
        def call

         input = ""
         while input != "exit"
         puts "Welcome to the Green Dining App!"

        puts "To find green dining by name, please enter 'name'."
        puts "To find green dining locations, please enter 'locations'."
        puts "To find out the menu, please enter 'menu'."
        puts "To discover green news and opportunities, please enter 'next'."
        puts "To volunteer, please enter 'volunteer'."
        puts "To exit, please type 'exit'."
        puts "What would you like to do?"

        input = gets.strip
        

        case input
        when "name"
          name
        when "locations"
          get_locations(location)
        when "menu" 
          show_menu
        when "next"
          what_next
        when "volunteer"
          volunteer
       when "exit"
          goodbye
        end
      end
    end

    def get_locations(location)
      puts "Choose green dining location to see more details."
     input = gets.strip
     location.green_dining.each.with_index(1) do |location, i|
      puts "#{i}. #{locations.name}"
      get_location = chosen_location[input.to_i - 1]
    end
    get_menu(location)
   end

  def get_menu(location)
    chosen_location = gets.strip.to_i
    show_menu(input) if valid_input(chosen_location, @location)
    show_menu(input)
  end 
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end 

  def show_menu(input)
     input = gets.strip
       if input == "Red Bank"
     chosen_location_menu = GreenDining::Scraper.jbj_soul_kitchen_scraper
     chosen_location_menu.collect do |menu_red_bank|
     puts "#{menu_red_bank}"
     end
     elsif input == "Toms River"
     
     chosen_location_menu = GreenDining::Scraper.jbj_soul_kitchen_scraper
     chosen_location_menu.collect do |menu_toms_river|
     puts "#{menu_toms_river}"
    end
     else
     what_next
     
    end
  end


     def what_next
      puts "Are you done? Type 'exit' to exit or hit any key to volunteer."
      @input = gets.strip
    end 
  
    def goodbye
      puts "Enjoy Green Dining!"
    end 
  end 

     
    
     
  
  
  
  
  
  
  
  