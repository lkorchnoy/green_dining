class GreenDining::GreenDiningController
       
  def call 
    binding.pry
         input = ""
         while input != "exit"
        puts "Welcome to the Green Dining App!"

        puts "To find green dining by name, enter 'name'."
        puts "To find green dining locations, enter 'find'."
        puts "To find green dining by zip code, enter 'locations'." 
        puts "To find Red Bank location, enter '1'."
        puts "To find Toms River location, enter '2'."
        puts "To find out the menu, enter 'menu'."
        puts "To view Red Bank's menu, enter 'red bank menu'."
        puts "To view Toms River's menu, enter 'toms river menu'."
        puts ",mbbbm"
        puts "To volunteer, enter 'volunteer'."
        #puts "To advocate, enter 'advocate'." 
        puts "To quite, type 'exit'."
        puts "What would you like to do?"

        input = gets.strip

        case input
        when "name "
          name
        when "find"
          find
        when "locations"
          location.find_by_number(zipcode)
        when 
        when "menu" 
          menu
        when "volunteer"
          volunteer
       when "quite"
          exit
        end
      end
    end
     
    def name
      @name GreenDining::Scraper.jbj_soul_kitchen_scraper
      green_dining[green_dining_info{:name}]
    end

    def find(array)
      i = 0
      while i < array.length
        yield array [i]
        i = i + 1
      end
     end

     find(["Red Bank", "Toms River"]) do |location|
      if location[0]
        puts "Red Bank #{location}"
      if location[1]
        puts "Toms River #{location}"
      else 
        puts "Green Dining is not in that location yet. Email to green_dining@yahoo for updates"
      end
    end

    def location.find_by_number(zipcode)
      self.all.detect {|zipcode| zipcode.number == number}
    end

    def menu
      input = nil
      while input != "exit"
        input = gets.strip
        if input.downcase == "red bank menu"
          puts "red bank menu"
        elseif input == "toms river menu"
        puts "toms river menu"
      end
    end

    def volunteer
      @volunteer << volunteer
      @volunteer.collect{|volunteer| volunteer == green_dining.volunteer}
    end
            
    def exit
      puts "Goodbye!"  
      exit
  end 

    end