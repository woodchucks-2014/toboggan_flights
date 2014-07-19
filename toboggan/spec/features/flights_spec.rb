require 'spec_helper'

feature "User landing on website" do 

	context "on homepage" do 
   it " should have a flights page" do
       visit new_flight_path
       expect(page).to have_content "Dodo flights"
    end
  end

end