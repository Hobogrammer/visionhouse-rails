class CriminalArrest < ActiveRecord::Base
  belongs_to user through: :application
end
