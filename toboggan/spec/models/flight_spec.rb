require 'spec_helper'

describe Flight do

  it { should belong_to(:user) }
  it { should validate_presence_of(:beginning_airport) }
  it { should validate_presence_of(:ending_airport) }
  it { should validate_presence_of(:search_end) }
  it { should validate_numericality_of(:price) }

end
