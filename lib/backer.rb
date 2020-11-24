class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        # is an instance method that accepts a project as an argument and creates a ProjectBacker, associating the project with this backer
        ProjectBacker.new(project, self)
    end

    def backed_projects
        # returns an array of projects associated with this Backer instance
        project_backers = ProjectBacker.all.select {|p| p.backer == self}
        project_backers.map {|p| p.project}
    end

end