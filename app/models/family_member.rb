class FamilyMember < ActiveRecord::Base
  has_one :user, through: :application
end
