class MaritalStatus < ActiveRecord::Base
  belongs_to user through: :application
end
