class Employment < ActiveRecord::Base
  belongs_to user through: :application
end
