

# jr@oblique:  4/9/14

require 'spec_helper'

describe "Map viewing" do

  subject { page }


  describe "map viewing page" do
    before { visit map_path }
    it { should have_content('Maps') }
    it { should have_title('Test Maps') }
  end


  describe "map viewing" do
    before { visit map_path }
    # ...
  end


end

