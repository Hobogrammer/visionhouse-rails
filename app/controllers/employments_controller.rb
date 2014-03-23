class EmploymentsController < ApplicationController
  before_action :load_application

  def new
    @employment = @application.employments.build
  end

  def create
    @employment = @application.employments.create(employment_params)

     respond_to do |format|
      if @application.save
        format.html { redirect_to new_application_criminal_arrest_path(@application) }
        format.json { render action: 'show', status: :created, location: @employment }
      else
        format.html { render action: 'new' }
        format.json { render json: @employment.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def load_application
    @application = Application.find(params[:application_id])
  end

  def employment_params
    params.require(:employment).permit(:employer_name,:employer_address1, :employer_address2, :employer_city, :employer_state, :employer_zip_code, :employer_phone,:occupation,:start_month_year,:end_month_year,:reason_for_leaving)
  end
end

