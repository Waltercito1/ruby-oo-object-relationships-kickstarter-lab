class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        proj_bakers = ProjectBacker.all.select do |bakers|
            bakers.baker == self
        end
        proj_bakers.map do |bakers|
            bakers.project
        end
    end
end
