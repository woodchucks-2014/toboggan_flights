require 'spec_helper'
require 'capybara'

RSpec.describe UsersController, :type => :controller do
  include Devise::TestHelpers

	  def setup
	    @request.env["devise.mapping"] = Devise.mappings[:admin]
	    sign_in FactoryGirl.create(:admin)
	  end
# end

# 	describe 'User Sign In' do
#   # assumes that there is a FactoryGirl Factory :user
#   # with email and password fields.
#   let(:user) {create(:user)}
 
#   it 'allows users to sign in with an email address and password' do
#     visit '/users/sign_in'
 
#     fill_in 'Email', with: user.email
#     fill_in 'Password', with: user.password
 
#     click_button 'Sign in'
 
#     page.should have_content 'Signed in successfully'
#   end
# end
end

