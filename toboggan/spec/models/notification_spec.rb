require 'spec_helper'

describe Notification do
  it { should belong_to(:user) }
  it { should belong_to(:flight) }
  it { should validate_presence_of(:url) }

end
