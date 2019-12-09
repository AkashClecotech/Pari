class ProjectsController < ApplicationController
  def new
    @projects = Project.all
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to new_project_path
    else
      render 'new'
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to new_project_path
    else
      render 'new'
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
     redirect_to new_project_path
  end  


  private
  def project_params
    params.require(:project).permit(:heading, :discription)
  end
end
