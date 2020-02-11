class GreenDining::GreenDining
 attr_accessor :person, :volunteer, :food, :zip_code
 
    @@all = []

    def initialize(person, volunteer, food, zip_code)
        @person = person
        @volunteer = volunteer
        @zip_code = zip_code
        @food = food
        @green_dining = {}
        @@all << self
    end

    def event
        #Green_dining = Green_dining.new(:person, :volunteer, :food, :zip_code)
        
       # @green_dining << Green_dining.new("person", "volunteer", "food", "zip_code")

       #@green_dining.sort_by {|dining| [dining.person, dining.volunteer, dining.food, dining.zip_code]}
        h = Green_dining.new(zip_code)
        h = {:person => ["volunteer", "zip_code", "food"]}
          p  h.values_at("person") if person == person.zip_code
            
    end



    
end