class ApplicationsController < ApplicationController
  before_action :set_application, only: [:show, :edit, :update, :destroy]

  def index
    @application = Application.all
  end

  def show
  end

  def new
    @application = Application.new
  end

  def edit
  end

  def create
    @application = Application.new(application_params)

    respond_to do |format|
      if @application.save
        format.html { redirect_to @application, notice: 'Application was successfully created.' }
        format.json { render action: 'show', status: :created, location: @application }
      else
        format.html { render action: 'new' }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @application.update(application_params)
        format.html { redirect_to @application, notice: 'Application was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @application.destroy
    respond_to do |format|
      format.html { redirect_to application_url }
      format.json { head :no_content }
    end
  end
end
private

def set_application
  @application = Application.find(params[:id])
end

def application_params
  params.require(:application).permit(:user_id,:first_name,:middle_name,:last_name,:age,:gender,:primary_language,:interpreter,:address1,:address2,:city,:state,:zip_code,:phone,:car,:insurance,:drivers_license,:drivers_license_state,:family_programs,:shoreline_family,:renton_family,:mens_recovery,:referring_agency,:referring_person,:agency_address1,:agency_address2,:agency_city,:agency_state,:agency_zip_code,:agency_phone,:perceived_benefit,:alcohol_problem,:drug_problem,:sober_days,:sober_months,:sober_years,:times_in_treatment,:last_treatment_date,:currently_in_twelve_step,:changes_to_ensure_sobriety,:history_serious_illness,:medical_problem_and_medication,:non_prescription_drugs,:non_prescription_drugs_explanation,:have_been_in_counseling,:counseling_date,:counseling_location,:counseling_issues,:attempted_suicide,:attempted_suicide_date,:attempted_suicide_method,:pending_charges_or_warrants,:pending_charges_or_warrants_description,:probation_or_parole,:probation_officer_first_name,:probation_officer_last_name,:probation_officer_phone,:highest_grade_completed,:diploma,:diploma_school,:diploma_date,:GED,:GED_date,:gross_income_YTD,:gross_income_previous_year,:goals_for_year,:financial_support_plan,:married_date,:divorced_date,:age_at_first_married,:number_of_prior_marriages,:current_significant_other,:birthplace,:years_in_washington,:reason_for_relocating,:emergency_contact_doctor_name,:emergency_contact_doctor_phone,:emergency_contact_hospital_name,:emergency_contact_hospital_phone,:emergency_contact_friend_or_relative_name,:emergency_contact_friend_or_relative_phone,:medical_insurance_name,:medical_insurance_group_number,:military_service,:military_service_description,:home_record_address1,:home_record_address2,:home_record_city,:home_record_state,:home_record_zip_code,:home_record_phone)
end

