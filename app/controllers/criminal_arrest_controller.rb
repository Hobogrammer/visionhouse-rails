class CriminalArrestController < ApplicationController
  before_action :load_application

  def new
    @criminal_arrest = @application.criminal_arrests.build
  end

  def create
    @criminal_arrest = @application.criminal_arrests.create(criminal_arrest_params)
  end

  private

  def load_application
    @application = Application.find(params[:application_id])
  end

  def criminal_arrest_params
    params.require(:criminal_arrest).permit(:description,:month_year)
  end
end
