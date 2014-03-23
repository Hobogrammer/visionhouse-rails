class CriminalArrestController < ApplicationController
  before_action :load_application

  def new
    @criminal_arrest = @application.criminal_arrests.build
  end

  def create
    @criminal_arrest = @application.criminal_arrests.create(criminal_arrest_params)

     respond_to do |format|
      if @application.save
        format.html { redirect_to new_application_housing_history_path(@application) }
        format.json { render action: 'show', status: :created, location: @application }
      else
        format.html { render action: 'new' }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def load_application
    @application = Application.find(params[:application_id])
  end

  def criminal_arrest_params
    params.require(:criminal_arrest).permit(:description,:month_year)
  end
end
