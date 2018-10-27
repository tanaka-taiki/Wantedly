class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @projects = Project.page(params[:page]).per(8)
  end
end
