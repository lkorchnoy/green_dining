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
            puts "#{i}. #{location.location_one}"
            puts "#{i + 1}. #{location.location_two}"
           
          end
        end

        
        def user_input
          input = nil
          while input != 'exit'
            puts "Enter the number of the location (1 or 2) you'd like more info on or type list to see the locations again or type exit:"
            input = gets.strip.downcase
     
             if input.to_i > 0
        
             
              self.current_location = GreenDining::GreenDining.find(input)
             elsif input == 'menu'
              GreenDining::Scraper.get_menu.each do |menu| 
                  GreenDining::GreenDining.all << menu
                  puts "#{current_location.location_one} - #{current_location.menu}"
              end
            elsif input == 'list'
              list_locations
            else
              puts "Not sure what you want, type list or exit."
            end
          end
        end

        def return_home
          puts "To exit the app, enter 'exit'."
          puts "To return to the main menu, enter 'menu'."
          input = gets.strip.downcase
        if input == 'exit'
           goodbye
        elsif input == 'menu'
           main_menu
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


      