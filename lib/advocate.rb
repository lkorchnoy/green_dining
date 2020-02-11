class Advocate 
    attr_accessor :name, :social_media

    @@all = []

    def initialize(name)
        @name = name
        @social_media = social_media
        @green_dining = []
    end
   
    def self.all
    @@all
    end

    def self.destroy_all
    @@all.clear
    end

    def self.create(name)
    new(name).tap {|a| a.save}
    end

    def person 
        person.each {|p| p.advocate == social_media}
        puts "You and you and #{p} together we can end world hunger"
    end

    def save
    self.class.all << self
    end

end
