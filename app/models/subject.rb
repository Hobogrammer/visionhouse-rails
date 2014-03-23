class Subject < ActiveRecord::Base


  has_one :application,foreign_key: "user_id"
  has_many :children, through: :application
  has_many :criminal_arrest, through: :application
  has_many :employment, through: :application
  has_many :family_member, through: :application
  has_many :housing_history, through: :application
end
