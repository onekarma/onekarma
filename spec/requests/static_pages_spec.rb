require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "onekarma | Home")
    end

  end

  describe "Story page" do

    it "should have the content 'Stories'" do
      visit '/static_pages/stories'
      page.should have_content('Stories')
    end

    it "should have the title 'Stories'" do
      visit '/static_pages/stories'
      page.should have_selector('title',
                        :text => "onekarma | Stories")
    end

  end

  describe "About page" do

    it "should have the content 'About onekarma'" do
      visit '/static_pages/about'
      page.should have_content('About onekarma')
    end

    it "should have the title 'About onekarma'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                        :text => "onekarma | About")
    end
  end

end