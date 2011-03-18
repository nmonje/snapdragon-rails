require 'spec_helper'

describe "snaps/index.html.erb" do
  before(:each) do
    assign(:snaps, [
      stub_model(Snap,
        :user_id => 1,
        :burst_id => 1,
        :image_url => "Image Url",
        :lat => "9.99",
        :long => "9.99",
        :event_id => 1
      ),
      stub_model(Snap,
        :user_id => 1,
        :burst_id => 1,
        :image_url => "Image Url",
        :lat => "9.99",
        :long => "9.99",
        :event_id => 1
      )
    ])
  end

  it "renders a list of snaps" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
