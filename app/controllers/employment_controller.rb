class EmploymentController < ApplicationController
  before_action :load_application

  def new
    @employment = @application.employments.build
  end

  def create
    @employment = @application.employments.create(employment_params)
  end

  private

  def load_application
    @application = Application.find(params[:application_id])
  end

  def employment_params

  end
end

