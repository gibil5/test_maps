
#jr@oblique: 5/9/14


require 'spec_helper'

describe "Create Maps" do

subject { page }





# Create new map 
    describe "create new map" do

      let(:map) { FactoryGirl.create(:map) }


      before do
        visit maps_path
        fill_in "Name",    		with: map.name
        fill_in "File name", 	with: map.file_name
        click_button "Create map"
      end

      describe "after creating map" do

        it "should render the desired page" do
          expect(page).to have_title('Create Map')
        end

      end

    end
end
