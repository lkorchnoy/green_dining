class GreenDining::GreenDiningController

       def call
        main_menu
        user_input
        what_next
       end

        def main_menu
        puts "Welcome to the Green Dining App! Discover community dining and food sharing experience."
        puts "Share food Not waste food"
        puts "Here are the 2 locations."
        puts "1. JBJ Soul Kitchen Red Bank location"
        puts "2. JBJ Soul Kitchen Toms River location"
        puts "To select, please enter '1' or '2'."
        puts "To go back to the main menu, enter 'menu'."
        puts "To exit, please type 'exit'."
               
        puts "What would you like to do?"
          user_input
        end

        def return_home
          puts "To exit the app, enter 'exit'."
          puts "To return to the main menu, enter 'menu'."
          @input = gets.strip.downcase
          if @input == 'exit'
            goodbye
          elsif @input == 'menu'
            main_menu
          else 
            puts "Try again"
            return_home
          
        end
      end

        def user_input
            @input = nil
            while @input != 'exit'
            @input = gets.strip.to_i
            user_input_one
            user_input_two
            
          end 
        end

         def user_input_one
              if @input == 1  
              puts "Great choice. Welcome to Red Bank Green Dining"
              @current_location = GreenDining::Scraper.scrape_redbank_location
              @current_menu = GreenDining::Scraper.scrape_redbank_menu
              @redbank = GreenDining::GreenDining.new(@current_location, @current_menu)
              puts @redbank.location
             

            puts "Would you like to see the menu for the current location?"
            puts "Type 'y' to see the menu"
            @input = gets.strip.downcase
            if @input == 'y'
                puts @redbank.menu
                return_home
                elsif @input == 'menu'
                main_menu
                elsif @input == 'exit'
                goodbye
                else 
             puts "Invalid input, please try again"
             main_menu
             end
            end
        end
        
         def user_input_two
            if @input == 2 
            puts "Great choice. Welcome to Toms River Dining"
            @current_location = GreenDining::Scraper.scrape_tomsriver_location
            @current_menu = GreenDining::Scraper.scrape_tomsriver_menu
            @tomsriver = GreenDining::GreenDining.new(@current_location, @current_menu)
            puts @tomsriver.location
           
            
            puts "Would you like to see the menu for the current location?"
            puts "Type 'y' to see the menu"
            @input = gets.strip.downcase
              if @input == 'y'
                  puts @tomsriver.menu
                  return_home
                  elsif @input == 'menu'
                  main_menu
                  elsif @input == 'exit'
                    goodbye
                  else 
              puts "Invalid input, please try again"
            main_menu
            end
          end
        end
      

         def what_next
          @input = gets.strip.downcase
          puts "Are you done? Type 'exit' to exit"
          puts "To return to the main menu, enter 'menu'."
          main_menu
        end 
        
        
         def goodbye
          puts "Enjoy Green Dining!"
          exit
         end

      end   