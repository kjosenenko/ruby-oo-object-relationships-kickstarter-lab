class Project

    attr_reader :title

    def initialize(title)
        @title=title
    end

    def add_backer(backer)
        # is an instance method that accepts a backer as an argument and creates a ProjectBacker, associating the backer with this projec
        ProjectBacker.new(self, backer)
    end

    def backers
        # returns an array of backers associated with this Project instance
        project_backers = ProjectBacker.all.select {|p| p.project == self}
        project_backers.map {|p| p.backer}
    end

end