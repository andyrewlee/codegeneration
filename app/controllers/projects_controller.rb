class ProjectsController < ApplicationController
  def new
  end

  def create
    project = Project.new
    project.user = User.find(session[:user_id])
    project.description = params[:description]
    project.code = params[:code]
    project.name = User.find(params[:name])

    if project.save
      redirect_to "/projects/#{project.id}"
    else
      flash[:errors] = project.errors.full_messages
      redirect_to "/projects/new"
    end
  end

  def show
    @project = Project.find(params[:id])
  end
end
