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
    params.require(:employment).permit(:employer_name,:employer_address1, :employer_address2, :employer_city, :employer_state, :employer_zip_code, :employer_phone,:occupation,:start_month_year,:end_month_year,:reason_for_leaving)
  end
end

