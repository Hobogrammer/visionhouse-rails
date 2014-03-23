class PersonController < ApplicationController
  before_action :load_application

  def new
    @person = @application.people.build
  end

  def create
    @person = @application.people.create(person_params)
  end

  private

  def load_application
    @application = Application.find(params[:application_id])
  end

  def person_params

  end
end
