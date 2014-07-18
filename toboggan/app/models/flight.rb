class Flight < ActiveRecord::Base

  has_many   :user_flights
  has_many   :user, through: :user_flights


  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}

end
