class GreenDining::GreenDiningController

       def call
        menu
        user_input
       end

        def menu
        puts "Welcome to the Green Dining App! Discover community dining and food sharing experience."
        puts "Share food Not waste food"
        puts "Here are the 2 locations."
        puts "1. JBJ Soul Kitchen Red Bank location"
        puts "2. JBJ Soul Kitchen Toms River location"
        puts "To select, please enter '1' or '2'."
        puts "To exit, please type 'exit'."
        puts "What would you like to do?"
          user_input
        end

        def user_input
          @input = gets.strip.to_i
         if @input == 1  
            puts "Great choice. Welcome to Red Bank Green Dining"
            @current_location = GreenDining::Scraper.scrape_redbank_location
            @current_menu = GreenDining::Scraper.scrape_redbank_menu
            @redbank = GreenDining::GreenDining.new(@current_location, @current_menu)
            puts @redbank.location
            
            puts "Would you like to see the menu for the current location?"
            
            puts "Type 'y' to see the menu"
            input = gets.strip
              if input == 'y'
            puts @redbank.menu
            else
              menu
            end

          elsif @input == 2
            puts "Great choice. Welcome to Toms River Dining"
            @current_location = GreenDining::Scraper.scrape_tomsriver_location
            @current_menu = GreenDining::Scraper.scrape_tomsriver_menu
            @tomsriver = GreenDining::GreenDining.new(@current_location, @current_menu)
            puts @tomsriver.location
            
            puts "Would you like to see the menu for the current location?"
            
            puts "Type 'y' to see the menu"
            input = gets.strip
              if input == 'y'
            puts @tomsriver.menu
              else
              menu
              end

          elsif @input == 3
            puts "try again"
          else 
          menu
          end
        end
      


         
        def what_next
          puts "Are you done? Type 'exit' to exit"
          @input = gets.strip
        end 

        
        
        def valid_input(input, data)
          input.to_i <= data.length && input.to_i > 0
        end 

        def goodbye
          puts "Enjoy Green Dining!"
        end
      end   