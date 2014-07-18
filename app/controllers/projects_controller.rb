class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = projects_url.new(params[:id])

    if @project.save
      redirect_to projects_url
     else
      render :new
     end
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    if @project.update_attributes(project_params)
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  private
  def project_params
    params.require(:project).permit(:title, :description, :start_date, :end_date, :target)
  end
end
