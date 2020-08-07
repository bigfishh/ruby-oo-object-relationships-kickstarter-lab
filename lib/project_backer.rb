require 'pry'
class ProjectBacker

    attr_accessor :project, :backer

    @@all = []

    def initialize(project_inst, backer_inst)
        @project = project_inst
        @backer = backer_inst
        @@all << self
    end

    def self.all 
        @@all
    end

end



# project_i = Project.new("binding.pry rules")
# backer_i = Backer.new("code bender")

# ProjectBacker.new(project_i, backer_i)



### P A S S E D
# - When a `ProjectBacker` instance is initialized, it should be initialized with a `Project` instance and a
# `Backer` instance.
# - The `ProjectBacker` class is maintaining the relationship. It should have an `@@all` class
# variable. When an instance is initialized, it should be
# stored in this variable.

# binding.pry
0