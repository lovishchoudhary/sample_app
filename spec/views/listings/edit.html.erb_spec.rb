require 'spec_helper'

describe "listings/edit" do
  before(:each) do
    @listing = assign(:listing, stub_model(Listing,
      :club_id => 1,
      :sport_id => 1
    ))
  end

  it "renders the edit listing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", listing_path(@listing), "post" do
      assert_select "input#listing_club_id[name=?]", "listing[club_id]"
      assert_select "input#listing_sport_id[name=?]", "listing[sport_id]"
    end
  end
end
