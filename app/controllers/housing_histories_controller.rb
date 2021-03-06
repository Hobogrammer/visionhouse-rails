class HousingHistoriesController < ApplicationController
  before_action :load_application

  def new
    @housing_history = @application.housing_histories.build
  end

  def create
    @housing_history = @application.housing_histories.create(housing_history_params)

     respond_to do |format|
      if @application.save
        format.html { redirect_to new_application_person_path(@application) }
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

  def housing_history_params

  end
end
