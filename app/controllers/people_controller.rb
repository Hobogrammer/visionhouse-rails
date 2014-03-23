class PeopleController < ApplicationController
  before_action :load_application

  def new
    @person = @application.people.build
  end

  def create
    @person = @application.people.create(person_params)

     respond_to do |format|
      if @application.save
        format.html { redirect_to new_application_family_member(@application) }
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

  def person_params
    params.require(:person).permit(:first_name,:middle_name,:last_name,:relationship)
  end
end
