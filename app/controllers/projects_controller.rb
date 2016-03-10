class ProjectsController < ApplicationController

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)

		if @project.save
			flash[:notice] = "Project Created"
			redirect_to projects_path
		else
			logger.debug("There was an error")
		end
	end

	def index
		@projects = Project.all
	end
end

private

def project_params
	params.require(:project).permit(:project_name)
end
