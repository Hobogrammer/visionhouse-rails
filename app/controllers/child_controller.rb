class ChildController < ApplicationController
  before_action :load_application

  def new
    @child = @application.children.build
  end

  def create
    @child = @application.children.new(child_params)
  end

  private

  def load_application
    @application = Application.find(params[:application_id])
  end

  def child_params
    params.require(:child).permit(:first_name, :last_name, :date_of_birth, :age, :gender, :legal_guardian_first_name, :legal_guardian_last_name, :legal_guardian_gender, :person_with_custody_name)
  end
end
