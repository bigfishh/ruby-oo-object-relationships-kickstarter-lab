require_relative 'project_backer'
require_relative 'project'
require 'pry'

class Backer 

    attr_accessor :name

    def initialize(name_param)
        @name = name_param
    end

    def back_project(project_i)
        # binding.pry
        ProjectBacker.new(project_i, self)
    end


    def backed_projects
        #if the array is empty, the .select on line below will never run
        projectbackers = ProjectBacker.all.select do |inst_pb|
            inst_pb.backer == self
        end

        projectbackers.map do |projectbacker|
            projectbacker.project
        end
    end

end

bob = Backer.new("bob")
jim = Backer.new("jim")
ji = Backer.new("jim")

pj = Project.new("pj")
pb = Project.new("pb")

jim.back_project(pj)
bob.back_project(pj)
bob.back_project(pb)



### P A S S E D
# - When a `Backer` instance is initialized, it should be initialized with a name.
# Once both classes have their attributes and readers set up, write an instance
#   method on the Backer class called 
#   -`back_project` 
#     - project instance 
#     => `ProjectBacker` .new 
#   that takes in a Project
#   instance. This method should create a `ProjectBacker` instance using the
#   provided Project instance and the current Backer instance (the instance this method was called on).
# the final step for the Backer class is to build an
#   instance method that returns all the projects associated with _this Backer
#   instance. 
    # - return all this backer's  project 
#   Since Project instances are not directly associated with Backer instances, you will need to get
#   this information _through_ the ProjectBacker class.


binding.pry 
0