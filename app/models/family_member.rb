class FamilyMember < ActiveRecord::Base
  belongs_to user through: :application
end
