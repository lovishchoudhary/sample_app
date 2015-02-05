require 'spec_helper'

describe "listings/new" do
  before(:each) do
    assign(:listing, stub_model(Listing,
      :club_id => 1,
      :sport_id => 1
    ).as_new_record)
  end

  it "renders new listing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", listings_path, "post" do
      assert_select "input#listing_club_id[name=?]", "listing[club_id]"
      assert_select "input#listing_sport_id[name=?]", "listing[sport_id]"
    end
  end
end
