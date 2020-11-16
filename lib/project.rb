class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        proj_bakers = ProjectBacker.all.select do |bakers|
            bakers.project == self
        end
        proj_bakers.map do |bakers|
            bakers.backer
        end
    end
end