class GreenDining::GreenDining
 attr_accessor :person, :volunteer, :food, :zip_code
 
    @@all = []

    def initialize(person, volunteer, food, zip_code)
        @person = person
        @volunteer = volunteer
        @zip_code = zip_code
        @food = food
        @@all << self
    end

    def event(dining)
        @dining = []
        @dining << dining("person", "volunteer", "food", "zip_code")
        dining.sort_by {|dining| [dining.person, dining.volunteer, dining.food, dining.zip_code]}
    end



    def green_dining_get_page
        puts  "for more locations "
    end
end