require 'spec_helper'

# Useful reference links
# https://github.com/jnicklas/capybara
# https://gist.github.com/428105

# Note: the FQDN tests do not go through the web server because they use
# rack_test instead of selenium/firefox or selenium/chrome (DB)
  
describe "pages: " do
   
  describe "home page" do
    it "should exist" do
      visit root_path
      page.status_code.should be(200)
    end
    
    it "should link to the about page" do
      visit root_path
      click_link('About')
      page.status_code.should be(200)  
    end
    
    it "should link to the contact page" do
      visit root_path
      click_link('Contact')
      page.status_code.should be(200)  
    end
  end
  
  describe "about page" do
    it "should exist" do
      visit about_path
      page.status_code.should be(200)
    end
    
    it "should link back to the home page" do
      visit about_path
      click_link('Home')
      page.status_code.should be(200)  
    end
  end

  describe "contact page" do
    it "should exist" do
      visit contact_path
      page.status_code.should be(200)
    end
  end

end