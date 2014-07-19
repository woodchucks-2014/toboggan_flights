require 'spec_helper'
require 'rails_helper'

RSpec.describe FlightsController, :type => :controller do

	# let(:test_flight) {Flight.create(beginning_airport: "JFK", ending_airport: "LGA", search_end: Time.now) }

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

  

end
