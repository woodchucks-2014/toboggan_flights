class UserFlights < ActiveRecord::Base
  belongs_to   :flight
  belongs_to   :user
end
