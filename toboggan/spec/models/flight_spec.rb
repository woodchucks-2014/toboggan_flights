require 'spec_helper'

describe Flight do

  it { should belong_to(:user) }
  it { should validate_presence_of(:beginning_airport) }
  it { should validate_presence_of(:ending_airport) }
  it { should validate_presence_of(:search_end) }
  it { should validate_numericality_of(:price) }

  it "should calculate duration on save" do
    f = Flight.new
    f.user_id = 1
    f.beginning_airport = "JFK"
    f.ending_airport = "LAX"
    f.search_end = Time.now
    f.price = 1_000_000
    f.start_vacation = Time.new(2014,12,30)
    f.end_vacation = Time.new(2015,3,30)
    expect { f.save }.to change(f, :duration).to(90)
  end

end
