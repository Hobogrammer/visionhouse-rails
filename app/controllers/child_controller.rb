class ChildController < ApplicationController
  before_action :load_application

  def new
    @child = @application.children.build
  end

  def create
    @child = @application.children.create(child_params)
  end

  private

  def load_application
    @application = Application.find(params[:application_id])
  end

  def child_params

  end
end
