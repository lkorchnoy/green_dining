    class GreenDining::GreenDiningController

      attr_accessor :menu, :current_location

       def call
          GreenDining::Scraper.get_locations
          welcome
          list_locations
          user_input
          return_home
          goodbye
       end

       def welcome
          puts "Welcome to the Green Dining App! Discover community dining and food sharing experience."
          puts "Share food Not waste food"
        end

        
        def list_locations
          
          puts "Today's Green Dining locations:"
          GreenDining::GreenDining.all.each.with_index(1) do |location, i|
            puts "#{i}. #{location.name}. #{location.location}"
            
           
          end
        end
       
        
        def user_input
          input = nil
          while input != 'exit'
            puts "Enter the number of the location"
            input = gets.strip.downcase
     
             if input.to_i > 0 && input.to_i <= GreenDining::GreenDining.all.length
             
             
              self.current_location = GreenDining::GreenDining.find(input)
              puts "Great choice. Enter menu for menu or enter list to see the locations again or type exit:"
             elsif input == 'menu'
                if !self.current_location.menu 
                  GreenDining::Scraper.get_menu(self.current_location)
                end
                puts self.current_location.menu
              
            elsif input == 'list'
              list_locations
            else
              puts "Not sure what you want, type list or exit."
            end
          end
          goodbye
        end

        
       def return_home
          puts "To exit the app, enter 'exit'."
          puts "To return to the main menu, enter 'menu'."
          input = gets.strip.downcase
        if input == 'exit'
           goodbye
       
        else 
          puts "Try again"
           return_home
         
        end
       end
       
            
        def goodbye
          puts "Enjoy Green Dining!"
          exit
        end

       end   


      