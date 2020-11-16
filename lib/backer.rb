class Backer
    attr_reader :name

    require 'pry'
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backers = ProjectBacker.all.select do |p_backers|
            p_backers.backer == self
        end
          project_backers.map do |p_backers|
            p_backers.project
        end
    end
end