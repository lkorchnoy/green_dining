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

        
    


