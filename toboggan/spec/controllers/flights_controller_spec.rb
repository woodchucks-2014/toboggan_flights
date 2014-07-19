require 'spec_helper'

RSpec.describe FlightsController, :type => :controller do

	describe "GET #new" do
  	it "gets the create flight form" do
  		get :new
  		expect(response).to render_template :new
  	end
  end

end
