require 'spec_helper'

describe "slots/show" do
  before(:each) do
    @slot = assign(:slot, stub_model(Slot,
      :slot_status => false,
      :listing_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    rendered.should match(/1/)
  end
end
