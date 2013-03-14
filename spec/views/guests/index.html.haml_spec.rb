require 'spec_helper'

describe "guests/index" do
  before(:each) do
    assign(:guests, [
      stub_model(Guest,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :specialfood => "Specialfood",
        :ceremony => false,
        :meal => false,
        :evening => false
      ),
      stub_model(Guest,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :specialfood => "Specialfood",
        :ceremony => false,
        :meal => false,
        :evening => false
      )
    ])
  end

  it "renders a list of guests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Specialfood".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
