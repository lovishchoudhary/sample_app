require 'spec_helper'

describe "sports/show" do
  before(:each) do
    @sport = assign(:sport, stub_model(Sport,
      :sport => "Sport"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sport/)
  end
end
