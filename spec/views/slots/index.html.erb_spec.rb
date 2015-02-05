require 'spec_helper'

describe "slots/index" do
  before(:each) do
    assign(:slots, [
      stub_model(Slot,
        :slot_status => false,
        :listing_id => 1
      ),
      stub_model(Slot,
        :slot_status => false,
        :listing_id => 1
      )
    ])
  end

  it "renders a list of slots" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
