class ChildController < ApplicationController
  before_action :load_application

  def new
    @child = @application.children.build
  end

  def create
    @child = @application.children.new(child_params)

     respond_to do |format|
      if @child.save
        format.html { redirect_to new_application_employment_path(@application) }
        format.json { render action: 'show', status: :created, location: @application }
      else
        format.html { render action: 'new' }
        format.json { render json: @child.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def load_application
    @application = Application.find(params[:application_id])
  end

  def child_params
    params.require(:child).permit(:first_name, :last_name, :date_of_birth, :age, :gender, :legal_guardian_first_name, :legal_guardian_last_name, :legal_guardian_gender, :person_with_custody_name)
  end
end
