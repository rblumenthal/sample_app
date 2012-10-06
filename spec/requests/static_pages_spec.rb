require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    it "should have content 'Sample App'" do
        visit '/static_pages/home'
        page.should have_selector('h1', :text => 'Sample App')
    end
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial | Home")
    end
  end
  describe "Help Page" do
    it "should have content 'Help'" do
        visit '/static_pages/help'
        page.should have_selector('h1', :text => 'Help')
    end
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial | Help")
    end
  end  
  describe "About Page" do
    it "should have content 'About us" do
        visit '/static_pages/about'
        page.should have_selector('h1', :text => 'About us')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial | About")
    end
  end
end
