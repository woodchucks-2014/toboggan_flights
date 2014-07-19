require 'spec_helper'

feature "User landing on website" do 

	context "on homepage" do 
   it " should have a flights page" do
       visit flights_path
       expect(page).to have_content "Dodo flights"
    end
  end

end