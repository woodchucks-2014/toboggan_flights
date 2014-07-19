require 'spec_helper'
require 'rails_helper'

RSpec.describe FlightsController, :type => :controller do

  let(:test_flight) { FactoryGirl.create :flight }

	describe "GET #new" do
  	it "gets the create flight form" do
  		get :new
  		expect(response).to render_template :new
  	end
  end

  describe "POST #create" do
  	it "creates a new flight with valid params" do
      expect {
        FactoryGirl.create :flight
      }.to change(Flight, :count).by(1)
  	end
    it "doesn't save a new flight with invalid params" do 
      expect {
        Flight.create
      }.to change(Flight, :count).by(0)
    end
  end

  describe "#update" do 
    it "updates the flight with correct params" do 
      p "*"*50
      p test_flight
      put :update, id: test_flight.id, flight: {beginning_airport: "AAA", ending_airport: "ZZZ", search_end: Time.now, price: 1}
      test_flight.reload
      expect(test_flight.beginning_airport).to eq("AAA")
    end
  end

  

end
