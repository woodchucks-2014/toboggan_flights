require 'spec_helper'
require 'capybara'
include Warden::Test::Helpers
Warden.test_mode!

RSpec.describe UsersController, :type => :controller do
  include Devise::TestHelpers

	  def setup
	    @request.env["devise.mapping"] = Devise.mappings[:user]
	    sign_in FactoryGirl.create(:user)
	  end
# end

			describe 'User Sign In' do
		  # assumes that there is a FactoryGirl Factory :user
		  # with email and password fields.
		  let(:user) {create(:user)}
		 
		  it 'allows users to sign in with an email address and password' do
		    visit '/users/sign_in'
		 
		    fill_in 'Email', with: user.email
		    fill_in 'Password', with: user.password
		 
		    click_button 'Sign in'
		 
		    page.should have_content 'Signed in successfully'
		  end
		end

		  describe 'User Sign Out' do
		  it 'allows user to sign out' do
				logout(:user)
			end	
	end

			describe "User Sign Up" do
		  it "allows new users to register with an email address and password" do
		    visit "/users/sign_up"

		    fill_in "Email",                 :with => "email@email.com"
		    fill_in "Phone number", 				 :with => "123-456-7890"
		    fill_in "Password",              :with => "ilovegrapes"
		    fill_in "Password confirmation", :with => "ilovegrapes"

		    click_button "Sign up"

		    page.should have_content("Welcome! You have signed up successfully.")
		  end
		end
end

