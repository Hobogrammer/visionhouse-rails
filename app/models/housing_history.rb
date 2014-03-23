class HousingHistory < ActiveRecord::Base
  has_one :user, through: :application
end
