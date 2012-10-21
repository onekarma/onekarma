require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "onekarma" }

  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "#{base_title} | Home")
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
                        :text => "#{base_title} | Stories")
    end

  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                        :text => "#{base_title} | Contact")
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
                        :text => "#{base_title} | About")
    end
  end

end