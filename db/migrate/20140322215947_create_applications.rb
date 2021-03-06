class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.integer :user_id
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :age
      t.string :gender
      t.string :primary_language
      t.boolean :interpreter
      t.text :address1
      t.text :address2
      t.string :city
      t.string :state
      t.integer :zip_code
      t.integer :phone
      t.boolean :car
      t.boolean :insurance
      t.string :drivers_license
      t.string :drivers_license_state
      t.string :family_programs
      t.boolean :shoreline_family
      t.boolean :renton_family
      t.boolean :mens_recovery
      t.string :referring_agency
      t.string :referring_person
      t.string :agency_address1
      t.string :agency_address2
      t.string :agency_city
      t.string :agency_state
      t.integer :agency_zip_code
      t.integer :agency_phone
      t.string :perceived_benefit
      t.boolean :alcohol_problem
      t.boolean :drug_problem
      t.integer :sober_days
      t.integer :sober_months
      t.integer :sober_years
      t.integer :times_in_treatment
      t.datetime :last_treatment_date
      t.boolean :currently_in_twelve_step
      t.text :changes_to_ensure_sobriety
      t.text :history_serious_illness
      t.text :medical_problem_and_medication
      t.text :non_prescription_drugs
      t.text :non_prescription_drugs_explanation
      t.boolean :have_been_in_counseling
      t.datetime :counseling_date
      t.string :counseling_location
      t.text :counseling_issues
      t.boolean :attempted_suicide
      t.datetime :attempted_suicide_date
      t.string :attempted_suicide_method
      t.boolean :pending_charges_or_warrants
      t.text :pending_charges_or_warrants_description
      t.boolean :probation_or_parole
      t.string :probation_officer_first_name
      t.string :probation_officer_last_name
      t.integer :probation_officer_phone
      t.integer :highest_grade_completed
      t.boolean :diploma
      t.string :diploma_school
      t.datetime :diploma_date
      t.boolean :GED
      t.datetime :GED_date
      t.decimal :gross_income_YTD
      t.decimal :gross_income_previous_year
      t.text :goals_for_year
      t.text :financial_support_plan
      t.datetime :married_date
      t.datetime :divorced_date
      t.integer :age_at_first_married
      t.integer :number_of_prior_marriages
      t.boolean :current_significant_other
      t.string :birthplace
      t.decimal :years_in_washington
      t.text :reason_for_relocating
      t.string :emergency_contact_doctor_name
      t.integer :emergency_contact_doctor_phone
      t.string :emergency_contact_hospital_name
      t.integer :emergency_contact_hospital_phone
      t.string :emergency_contact_friend_or_relative_name
      t.integer :emergency_contact_friend_or_relative_phone
      t.string :medical_insurance_name
      t.integer :medical_insurance_group_number
      t.boolean :military_service
      t.text :military_service_description
      t.string :home_record_address1
      t.string :home_record_address2
      t.string :home_record_city
      t.string :home_record_state
      t.integer :home_record_zip_code
      t.integer :home_record_phone

      t.timestamps
    end
  end
end
