require 'spec_helper'

describe "clubs/index" do
  before(:each) do
    assign(:clubs, [
      stub_model(Club,
        :club => "MyText",
        :location => "MyText",
        :address => "Address",
        :description => "MyText",
        :email => "Email",
        :phone => "Phone"
      ),
      stub_model(Club,
        :club => "MyText",
        :location => "MyText",
        :address => "Address",
        :description => "MyText",
        :email => "Email",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of clubs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
