require 'spec_helper'

describe "sports/index" do
  before(:each) do
    assign(:sports, [
      stub_model(Sport,
        :sport => "Sport"
      ),
      stub_model(Sport,
        :sport => "Sport"
      )
    ])
  end

  it "renders a list of sports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sport".to_s, :count => 2
  end
end
