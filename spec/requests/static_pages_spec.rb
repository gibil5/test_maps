
#jr@oblique: 4/9/14

require 'spec_helper'

describe "Static pages" do

subject { page }



  describe "Home page" do

    before { visit root_path }
    it { should have_content('Test Maps') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end


  describe "Help page" do

    before { visit help_path }
    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end



  describe "Maps page" do

    before { visit map_path }
    it { should have_content('Maps') }
    it { should have_title(full_title('Maps'))}
  end


end
