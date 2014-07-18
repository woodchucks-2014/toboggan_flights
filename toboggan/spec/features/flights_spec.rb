require 'rails_helper'

  feature "it should have a flights page" do
    scenario "visit the page" do
       visit flights_path
    end
  end
