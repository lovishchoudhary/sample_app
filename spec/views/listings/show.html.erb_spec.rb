require 'spec_helper'

describe "listings/show" do
  before(:each) do
    @listing = assign(:listing, stub_model(Listing,
      :club_id => 1,
      :sport_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
