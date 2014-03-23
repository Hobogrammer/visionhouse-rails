class HousingHistoryController < ApplicationController
  before_action :load_application

  def new
    @housing_history = @application.housing_histories.build
  end

  def create
    @housing_history = @application.housing_histories.create(housing_history_params)
  end

  private

  def load_application
    @application = Application.find(params[:application_id])
  end

  def housing_history_params

  end
end
