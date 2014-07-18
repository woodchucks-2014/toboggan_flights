require 'spec_helper'

describe User, :type => :model do
  it {should have_many(:user_flights)}
  it {should have_many(:flights).through(:user_flights)}
  it {should have_many(:notifications)}

  it {should validate_presence_off(:name)}
  it {should validate_format_off(:phone_number)}
  it {should validate_format_off(:email)}

  it {should have_secure_password}

end
