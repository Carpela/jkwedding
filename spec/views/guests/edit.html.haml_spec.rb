require 'spec_helper'

describe "guests/edit" do
  before(:each) do
    @guest = assign(:guest, stub_model(Guest,
      :firstname => "MyString",
      :lastname => "MyString",
      :specialfood => "MyString",
      :ceremony => false,
      :meal => false,
      :evening => false
    ))
  end

  it "renders the edit guest form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", guest_path(@guest), "post" do
      assert_select "input#guest_firstname[name=?]", "guest[firstname]"
      assert_select "input#guest_lastname[name=?]", "guest[lastname]"
      assert_select "input#guest_specialfood[name=?]", "guest[specialfood]"
      assert_select "input#guest_ceremony[name=?]", "guest[ceremony]"
      assert_select "input#guest_meal[name=?]", "guest[meal]"
      assert_select "input#guest_evening[name=?]", "guest[evening]"
    end
  end
end
