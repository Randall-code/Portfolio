class ProjectController < ApplicationController
    def index
        @projects = Project.all
    end

    def new
        @project = Prpject.new
    end

    def create

    end

    private

    def project_params
        params.require(:article).permit(:title, :content, :image)
    end

end
