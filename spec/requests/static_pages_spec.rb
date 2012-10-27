require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "onekarma")
    end
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Story page" do

    it "should have the content 'Stories'" do
      visit '/static_pages/stories'
      page.should have_content('Stories')
    end
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "onekarma")
    end
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Stories')
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_content('Contact')
    end
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "onekarma")
    end
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Contact')
    end
  end

  describe "About page" do

    it "should have the content 'About onekarma'" do
      visit '/static_pages/about'
      page.should have_content('About onekarma')
    end
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "onekarma")
    end
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| About')
    end
  end

end