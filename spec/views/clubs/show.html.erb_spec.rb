require 'spec_helper'

describe "clubs/show" do
  before(:each) do
    @club = assign(:club, stub_model(Club,
      :club => "MyText",
      :location => "MyText",
      :address => "Address",
      :description => "MyText",
      :email => "Email",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Address/)
    rendered.should match(/MyText/)
    rendered.should match(/Email/)
    rendered.should match(/Phone/)
  end
end
