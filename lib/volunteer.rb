    class Volunteer

     attr_accessor :name, :zip_code

     @@all = []

     def initialize(name)
        @name = name
        @zip_code << zip_code
    end
   
    def self.all
    @@all
    end

    def self.destroy_all
    @@all.clear
    end

    def self.create(name)
    volunteer = new(name)
    volunteer.save
    volunteer
    end

    def person(volunteer)
        Person.all.each {|p| p.volunteer}
        person_get_food
        person_give_food
    end

   def save
    self.class.all << self
    end

end
