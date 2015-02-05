require 'spec_helper'

describe "listings/index" do
  before(:each) do
    assign(:listings, [
      stub_model(Listing,
        :club_id => 1,
        :sport_id => 2
      ),
      stub_model(Listing,
        :club_id => 1,
        :sport_id => 2
      )
    ])
  end

  it "renders a list of listings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
