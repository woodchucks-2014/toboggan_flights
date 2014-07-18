require 'spec_helper'

describe User do
  it {should have_many(:flights)}
  it {should have_many(:notifications)}

  it {should validate_presence_of(:phone_number)}
  it {should validate_presence_of(:email)}

end
