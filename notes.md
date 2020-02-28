Plan gem, imagine interfacce
run 'budle gem green_dining'
comment out gemspec for now
add gems and run bundle install
rename green_dining.rb to environment.rb
    a. add required gems and files
add files for classes
add file to the bin folder where my code will be executed
   a. file will need shebang and require environment.rb file so we have access to all classes and all gems
build cli interface
discover objects
program
get repo on github
run 'git init' to create the local repository
go to github and create the repo
come back to my terminal git add .
git commit -m 'initial commit' to be pushed to remote repo
run 'git remote add origin git github.com:lkorchnoy/green_dining.git'
run 'git push origin master' to actually send the code 



  #page = Nokogiri::HTML(open(green_dining_info[:green_dining_link]))


#  def self.olio_scraper
#     doc = Nokogiri::HTML(open("https://olioex.com/"))
#     olio.css("div.content").collect do |green_dining|
#         @green_dining << green_dining
#     green_dining_info = {
#     :green_dining_give_food => green_dining.css("div.wpb_wrapper").text.strip,
#     :green_dining_get_food =>green_dining.css("h3").text.strip,
#     :green_dining_volunteer = > green.dining.css("a.href=https://volunteers.olioex.com/").text.strip,
#     :green_dining_app => green_dining.css("a.href=https://apps.apple.com/gb/app/olio-food-sharing-revolution/id1008237086").text.strip
#         }
#     end

#     def self.operation_lunch_box_scraper
#         doc = Nokogiri::HTML(open("http://www.operationlunchbox.org"))

#green_dining_event_method

        
    #     def user_input_one
      #     input = gets.strip
      #    if input.to_i == 1
      #       puts "Great choice. Welcome to Red Bank Green Dining"
      #      # @current_location
      #       @current_menu = GreenDining::Scraper.scrape_redbank_menu
      #       #@redbank = GreenDining::GreenDining.new(@current_location, @current_menu)
      #       puts @redbank.location
             
      #       puts "Would you like to see the menu for the current location?"
      #       puts "Type 'y' to see the menu"
      #       input = gets.strip.downcase
      #     if input == 'y'
      #       puts @redbank.menu
      #         return_home
      #     else 
      #       puts "Invalid input, please try again"
      #         main_menu
      #        end
             
      #     elsif input == 'menu'
      #        main_menu
      #     elsif input == 'exit'
      #       goodbye
      #      end
      #      user_input_two
      #   end
      # end

        # def user_input_two
        #   input = gets.strip
        #   if input.to_i == 2 
        #     puts "Great choice. Welcome to Toms River Dining"
        #     #@current_location = GreenDining::Scraper.scrape_tomsriver_location
        #     @current_menu = GreenDining::Scraper.scrape_tomsriver_menu
        #     #@tomsriver = GreenDining::GreenDining.new(@current_location, @current_menu)
        #     puts @tomsriver.location
           
        #     puts "Would you like to see the menu for the current location?"
        #     puts "Type 'y' to see the menu"
        #    input = gets.strip.downcase
        #   if input == 'y'
        #     puts @tomsriver.menu
        #      return_home
        #   else 
        #     puts "Invalid input, please try again"
        #      main_menu
        #      end
             
        #   elsif input == 'menu'
        #     main_menu
        #   elsif input == 'exit'
        #     goodbye
        #     end
        #   end
        

        #  def self.scrape_locations
    #   locations = []
 
    #    locations << self.scrape_redbank_location
    #    locations << self.scrape_tomsriver_location
 
    #    locations
    # end
  
      
 
    #  def self.scrape_redbank_location
    #   doc = Nokogiri::HTML(open("https://jbjsoulkitchen.org"))
 
    #   location = self.new
    #   location.url = doc.search("div.et_pb_blurb_description")[3].children[1].children.text
    #   location.menu = doc.search("div.entry-content").text.delete("\n,\t").strip)
    #   location
    #  end
 
    #  def self.scrape_tomsriver_location
    #   doc = Nokogiri::HTML(open("https://jbjsoulkitchen.org"))
 
    #   location = self.new
    #   location.url = doc.search("div.et_pb_blurb_description")[7].children[1].children.text
    #   location.menu = doc.search("div.et_pb_column").text.delete("\n,\t").strip)
    #   location
    # end
  


            
        


