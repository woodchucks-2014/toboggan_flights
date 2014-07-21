require 'spec_helper'

describe Flight do

  it { should belong_to(:user) }
  it { should validate_presence_of(:beginning_airport) }
  it { should validate_presence_of(:ending_airport) }
  it { should validate_presence_of(:price) }

  it { should allow_value('917-957-7347', '917-734-2345').for(:phone_number) }

end
