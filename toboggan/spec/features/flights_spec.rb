require 'spec_helper'

feature "User landing on website" do 

	context "on homepage" do 
   it " should have a flights page" do
      visit new_flight_path
      expect(page).to have_content "dodo"
    end

   it "should create a new flight when filling out form" do 
			visit new_flight_path
			expect {
				fill_in 'flight_beginning_airport',   with: "Germany"
				fill_in 'flight_ending_airport', with: "France"
				fill_in 'flight_price', with: 50
				fill_in 'flight_phone_number', with: "917-957-7347"
				click_button 'submit'
			}.to change(Flight, :count).by(1)
     end 
  end

end