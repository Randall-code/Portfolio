class ProjectController < ApplicationController
    def index
        @projects = Project.all
    end

    def new
        @project = Prpject.new
    end

    def create
        @project = Project.new(project_params)

        if @project.save
            redirect_to @project
        else
            render :new, status: :unprocessable_entity
        end
    end

    private

    def project_params
        params.require(:project).permit(:title, :description, :image)
    end

end
