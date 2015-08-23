class Contractors::ProjectsController < ApplicationController
  before_action :get_project, only: [:edit, :show]

  def index
    @projects = Project.all
  end

  def show
  end

  def edit
  end

  private

  def get_project
    @project = Project.find_by(id: params[:id])
  end

  def permitted_params
    params.require(:project).permit(:name, :description, :video, :status,
      :category, :urgency)
  end
end
