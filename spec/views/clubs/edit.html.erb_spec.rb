require 'spec_helper'

describe "clubs/edit" do
  before(:each) do
    @club = assign(:club, stub_model(Club,
      :club => "MyText",
      :location => "MyText",
      :address => "MyString",
      :description => "MyText",
      :email => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit club form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", club_path(@club), "post" do
      assert_select "textarea#club_club[name=?]", "club[club]"
      assert_select "textarea#club_location[name=?]", "club[location]"
      assert_select "input#club_address[name=?]", "club[address]"
      assert_select "textarea#club_description[name=?]", "club[description]"
      assert_select "input#club_email[name=?]", "club[email]"
      assert_select "input#club_phone[name=?]", "club[phone]"
    end
  end
end
