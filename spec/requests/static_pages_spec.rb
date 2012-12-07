require 'spec_helper'

describe "Static pages" do
	let(:base_title) { "Ruby on Rails Tutorial Sample App" }
	subject { page }
	
	describe "Home page" do
	  before { visit root_path }
	  
	  it { should have_selector('h1', text: 'Sample App') }
	  it { should have_selector('title', text: "#{ base_title }") }
	  it { should have_selector('title', text: full_title('')) }
	  it { should have_selector('title', text: "#{ base_title } | Home") }
	  it { should have_selector('title', text: full_title('Home')) }
	end
end