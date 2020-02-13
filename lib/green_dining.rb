class GreenDining::GreenDining
 attr_accessor :person, :volunteer, :food, :advocate, :zip_code
 
    @@all = []

    def initialize(person, volunteer, food, advocate, zip_code)
        @person = []
        @volunteer = []
        @food = []
        @advocat = []
        @zip_code = []
    end

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
      end

    end


      def donate_food
        puts "Please email at green_dining@yahoo.com.
      end

end
  