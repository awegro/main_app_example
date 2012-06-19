require 'spec_helper'


describe "StaticPages" do
	let(:standardtitle) { "Ruby on Rails Tutorial Sample App"}
	let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  subject { page }
  describe "Home page" do
  	before { visit root_path } 

    it {should have_content('Sample App')}
    it {should have_selector('title',
                        text: full_title(''))}
  end

  describe "Help page" do
  	before { visit help_path}

    it {should have_content('Help')}
    it {should have_selector('title',
                    :text => full_title(''))}
  end

  describe "About page" do
  	before {visit about_path}
    it {should have_content('About')}
    it {should have_selector('title',
                    :text => full_title(''))}
  end

  describe "Contact page" do
  	before {visit contact_path}

    it "should have the content 'Contact Us'" do
      page.should have_content('Contact Us')
    end

    it "should have the right title" do
  	page.should have_selector('title',
                    :text => "#{standardtitle} | Contact")
	end
  end
end
