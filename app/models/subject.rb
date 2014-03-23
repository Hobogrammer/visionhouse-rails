class Subject < ActiveRecord::Base


  has_one :application,foreign_key: "user_id"
  has_many :children, through: :application , foreign_key: "user_id"
  has_many :criminal_arrest, through: :application, foreign_key: "user_id"
  has_many :employment, through: :application, foreign_key: "user_id"
  has_many :family_member, through: :application, foreign_key: "user_id"
  has_many :housing_history, through: :application, foreign_key: "user_id"
end
