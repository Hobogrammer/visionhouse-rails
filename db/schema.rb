# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140323065638) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: true do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.integer  "age"
    t.string   "gender"
    t.string   "primary_language"
    t.boolean  "interpreter"
    t.text     "address1"
    t.text     "address2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.integer  "phone"
    t.boolean  "car"
    t.boolean  "insurance"
    t.string   "drivers_license"
    t.string   "drivers_license_state"
    t.boolean  "shoreline_family"
    t.boolean  "renton_family"
    t.boolean  "mens_recovery"
    t.string   "referring_agency"
    t.string   "referring_person"
    t.string   "agency_address1"
    t.string   "agency_address2"
    t.string   "agency_city"
    t.string   "agency_state"
    t.integer  "agency_zip_code"
    t.integer  "agency_phone"
    t.string   "perceived_benefit"
    t.boolean  "alcohol_problem"
    t.boolean  "drug_problem"
    t.integer  "sober_days"
    t.integer  "sober_months"
    t.integer  "sober_years"
    t.integer  "times_in_treatment"
    t.datetime "last_treatment_date"
    t.boolean  "currently_in_twelve_step"
    t.text     "changes_to_ensure_sobriety"
    t.text     "history_serious_illness"
    t.text     "medical_problem_and_medication"
    t.text     "non_prescription_drugs"
    t.text     "non_prescription_drugs_explanation"
    t.boolean  "have_been_in_counseling"
    t.datetime "counseling_date"
    t.string   "counseling_location"
    t.text     "counseling_issues"
    t.boolean  "attempted_suicide"
    t.datetime "attempted_suicide_date"
    t.string   "attempted_suicide_method"
    t.boolean  "pending_charges_or_warrants"
    t.text     "pending_charges_or_warrants_description"
    t.boolean  "probation_or_parole"
    t.string   "probation_officer_first_name"
    t.string   "probation_officer_last_name"
    t.integer  "probation_officer_phone"
    t.integer  "highest_grade_completed"
    t.boolean  "diploma"
    t.string   "diploma_school"
    t.datetime "diploma_date"
    t.boolean  "GED"
    t.datetime "GED_date"
    t.decimal  "gross_income_YTD"
    t.decimal  "gross_income_previous_year"
    t.text     "goals_for_year"
    t.text     "financial_support_plan"
    t.datetime "married_date"
    t.datetime "divorced_date"
    t.integer  "age_at_first_married"
    t.integer  "number_of_prior_marriages"
    t.boolean  "current_significant_other"
    t.string   "birthplace"
    t.decimal  "years_in_washington"
    t.text     "reason_for_relocating"
    t.string   "emergency_contact_doctor_name"
    t.integer  "emergency_contact_doctor_phone"
    t.string   "emergency_contact_hospital_name"
    t.integer  "emergency_contact_hospital_phone"
    t.string   "emergency_contact_friend_or_relative_name"
    t.integer  "emergency_contact_friend_or_relative_phone"
    t.string   "medical_insurance_name"
    t.integer  "medical_insurance_group_number"
    t.boolean  "military_service"
    t.text     "military_service_description"
    t.string   "home_record_address1"
    t.string   "home_record_address2"
    t.string   "home_record_city"
    t.string   "home_record_state"
    t.integer  "home_record_zip_code"
    t.integer  "home_record_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "date_of_birth"
  end

  create_table "children", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "date_of_birth"
    t.integer  "age"
    t.string   "gender"
    t.string   "legal_guardian_first_name"
    t.string   "legal_guardian_last_name"
    t.string   "legal_guardian_gender"
    t.string   "person_with_custody_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "application_id"
  end

  create_table "criminal_arrests", force: true do |t|
    t.text     "description"
    t.datetime "month_year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "application_id"
  end

  create_table "employments", force: true do |t|
    t.string   "employer_name"
    t.string   "employer_address1"
    t.string   "employer_address2"
    t.string   "employer_city"
    t.string   "employer_state"
    t.integer  "employer_zip_code"
    t.integer  "employer_phone"
    t.string   "occupation"
    t.datetime "start_month_year"
    t.datetime "end_month_year"
    t.datetime "end_month_year1"
    t.text     "reason_for_leaving"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "application_id"
  end

  create_table "family_members", force: true do |t|
    t.string   "relationship"
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.integer  "phone"
    t.boolean  "supportive_of_you"
    t.string   "family_member_col"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "application_id"
  end

  create_table "housing_histories", force: true do |t|
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.datetime "from_date"
    t.datetime "to_date"
    t.text     "reason_for_leaving"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "application_id"
  end

  create_table "people", force: true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "relationship"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "application_id"
  end

  create_table "subjects", force: true do |t|
    t.string   "provider"
    t.integer  "uid"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
