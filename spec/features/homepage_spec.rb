require 'spec_helper'

describe "homepage"  do
  context "guest user" do
    it "visits the homepage" do
      visit root_path
      expect(page).to have_content
    end

    it "should have an input form -for" do
      visit root_path
      page.should have_selector("form")
    end

     it "should fill in the form with information" do
       visit root_path
       page.fill_in 'url_long_url', :with => 'Eminem aka slim shady'
       expect(page).to have_selector("input#url_long_url[value='Eminem aka slim shady']")
    end
  end
end
