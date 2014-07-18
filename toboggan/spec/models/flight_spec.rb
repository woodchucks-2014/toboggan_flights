require 'rails_helper'

RSpec.describe Flight, :type => :model do

  it {should have_many(:users_flights)}
  it {should have_many(:users).through(:user_flights)}

  it {should validate_numericality_of(:price)}

end
