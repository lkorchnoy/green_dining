def person(name)
     # person = Person.new
      @person << person(name)
      @person.each {|name| name == green_dining_event || donate_food}
    puts "#{name} To find community dining, enter 'green_dining_event', Scraper.jbj_soul_kitchen_scraper"
   end

    def volunteer(name)
      @volunteer << volunteer
      @volunteer.collect {|volunteer| volunteer == volunteer.name}
    end

    def food(zipcode)
      @food << food(zipcode)
      food.sort_by {|zipcode| [zipcode.food]}
    end

    def food.find_by_symbol(zipcode)
        self.all.detect {|zipcode| zipcode.symbol == symbol}
      end

    def zip_code(zipcode)
        green_dining_event = /^[a-z]*$/("zipcodeonfile")
        @zip_code << zipcode
        @zip_code.each {|zipcode| if /^[a-z]*$/.match("zipcode") zipcode == green_dining_event}
      end
    end

    def advocate(socialmedia)
      @advocate << advocate
      @advocate.each{|advocate| advocate == advocate.socialmedia}
      puts"#{advocate} together we can end world hunger, Scraper.operation_lunch_box_scraper"
    end

    def green_dining_event(green_dining_hash)
      green_dining_hash = {:person => ["volunteer", "food", "advocate", "zip_code"]}		
      green_dining_hash << Green_dining.today("person", "volunteer", "food", "advocate", "zip_code", Scraper.olio_scraper)       
      	         
        a = "input"
          case a 
        when /^[a-z]*$/ === "input"
            p  h.values_at("person") 	
            	# puts "#{green_dining.person}" - "#{green_dining.volunteer}" - "pick up #{green_dining.food}" - "at
        # #{green_dining.zipcode}" - "#{advocate}"
        
      end
      end


      def donate_food
        puts "Please email at green_dining@yahoo.com.
      end

      def green_dining_event(green_dining_hash)
      green_dining_hash = {:green_dining => ["name", "menu", "location", "zip_code", "volunteer")
        h.values_at("green_dining") 
     end
     end

      def self.olio_scraper
        doc = Nokogiri::HTML(open("https://olioex.com/"))
        olio.css("div.content").collect do |green_dining|
            @green_dining << green_dining
        green_dining_info = {
        :green_dining_give_food => green_dining.css("div.wpb_wrapper").text.strip,
        :green_dining_get_food =>green_dining.css("h3").text.strip,
         :green_dining_volunteer = > green.dining.css("a.href=https://volunteers.olioex.com/").text.strip,
         :green_dining_app => green_dining.css("a.href=https://apps.apple.com/gb/app/olio-food-sharing-revolution/id1008237086").text.strip
            }
        end
    
        def self.operation_lunch_box_scraper
             doc = Nokogiri::HTML(open("http://www.operationlunchbox.org"))
        end