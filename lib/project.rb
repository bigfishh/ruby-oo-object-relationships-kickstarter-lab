require 'pry'

class Project 

    attr_accessor :title

    @@all = []

    def initialize(title_param)
        @title = title_param
        @@all << self
    end

    def self.all 
        @@all
    end

end






## P A S S E D
# - When a `Project` instance is initialized, it should be initialized with a title.


# binding.pry
0