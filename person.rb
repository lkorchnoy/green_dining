class Person
extend Concerns::Findable

attr_accessor :name, :zip_code:, :volunteer, :advocate

@@all = []

def initialize(name)
    @name = name
    @zip_code = []
    @volunteer = []
    @advocate = []
end

def self.all
    @@all
end

def self.destroy_all
    @@all.clear
end

def self.create
    create.new.save
end

def person_get_food(zipcode)
    @zip_code.each {|z| z == food}
    puts "At #{z} we feed people not landfils"
end

def add_person_by_zip_code(zipcode)
    @zip_code << zipcode unless @zip_code == zipcode
    zipcode.person = food
end

def food
    food.collect {|f| f == person}
end

def person_give_food(zipcode, volunteer)
    @zip_code.each {|z| z == volunteer.food}
    puts "Thank you for preserving the environment at #{z} by not wasting food"
end

  def save
    @@all << self
  end

end






