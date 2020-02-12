class Food
extend Concerns::Findable

attr_accessor :name, :zip_code

@@all = []

def initialize(name)
    @name = name
    @zip_code = []
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

def add_zip_code(zipcode)
    @zip_code << zipcode unless @zip_code.include?(zipcode)
end

def person
    self.zip_code.collect {|z| z.person == food}.uniq
    get_food
    give_food
end

def save 
    @@all << self
end




end
