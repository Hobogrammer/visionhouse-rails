class FamilyMemberController < ApplicationController
  before_action :load_application

  def new
    @family_member = @application.family_members.build
  end

  def create
    @family_member = @application.family_members.create(family_member_params)
  end

  private

  def load_application
    @application = Application.find(params[:application_id])
  end

  def family_member_params
    params.require(:family_member).permit(:relationship,:name, :address1, :address2, :city, :state,:zip_code,:phone,:supportive_of_you, :family_member_col)
  end
end