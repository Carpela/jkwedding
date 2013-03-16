require 'spec_helper'

describe "guests/new" do
  before(:each) do
    assign(:guest, stub_model(Guest,
      :firstname => "MyString",
      :specialfood => "MyString",
      :ceremony => false,
      :meal => false,
      :evening => false
    ).as_new_record)
  end

  it "renders new guest form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", guests_path, "post" do
      assert_select "input#guest_firstname[name=?]", "guest[firstname]"
      assert_select "input#guest_specialfood[name=?]", "guest[specialfood]"
      assert_select "input#guest_ceremony[name=?]", "guest[ceremony]"
      assert_select "input#guest_meal[name=?]", "guest[meal]"
      assert_select "input#guest_evening[name=?]", "guest[evening]"
    end
  end
end
