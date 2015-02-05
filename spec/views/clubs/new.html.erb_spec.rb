require 'spec_helper'

describe "clubs/new" do
  before(:each) do
    assign(:club, stub_model(Club,
      :club => "MyText",
      :location => "MyText",
      :address => "MyString",
      :description => "MyText",
      :email => "MyString",
      :phone => "MyString"
    ).as_new_record)
  end

  it "renders new club form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", clubs_path, "post" do
      assert_select "textarea#club_club[name=?]", "club[club]"
      assert_select "textarea#club_location[name=?]", "club[location]"
      assert_select "input#club_address[name=?]", "club[address]"
      assert_select "textarea#club_description[name=?]", "club[description]"
      assert_select "input#club_email[name=?]", "club[email]"
      assert_select "input#club_phone[name=?]", "club[phone]"
    end
  end
end
