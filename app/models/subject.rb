class Subject < ActiveRecord::Base

  has_one :application,foreign_key: "user_id"
  has_many :children, through: :application
  has_many :criminal_arrests, through: :application
  has_many :employments, through: :application
  has_many :family_members, through: :application
  has_many :housing_histories, through: :application
end
