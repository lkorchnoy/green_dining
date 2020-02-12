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

    def event
        person_get_food
        person_give_food
        events = []
        a = "input"
          case a 
        when /^[a-z]*$/ === "input"
        events << Event.new("person", "volunteer", "zipcode")
        events.sort_by {|event| [event.person, event.volunteer, event.zipcode]}
        puts "#{event.person}" - "#{event.volunteer}" - "#{event.zipcode}"
        end

end