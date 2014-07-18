class Flight < ActiveRecord::Base

  has_many   :user_flights
  has_many   :user, through: :user_flights
  
end
