require 'spec_helper'

describe "sports/edit" do
  before(:each) do
    @sport = assign(:sport, stub_model(Sport,
      :sport => "MyString"
    ))
  end

  it "renders the edit sport form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sport_path(@sport), "post" do
      assert_select "input#sport_sport[name=?]", "sport[sport]"
    end
  end
end
