require 'spec_helper'

describe "snaps/edit.html.erb" do
  before(:each) do
    @snap = assign(:snap, stub_model(Snap,
      :user_id => 1,
      :burst_id => 1,
      :image_url => "MyString",
      :lat => "9.99",
      :long => "9.99",
      :event_id => 1
    ))
  end

  it "renders the edit snap form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => snaps_path(@snap), :method => "post" do
      assert_select "input#snap_user_id", :name => "snap[user_id]"
      assert_select "input#snap_burst_id", :name => "snap[burst_id]"
      assert_select "input#snap_image_url", :name => "snap[image_url]"
      assert_select "input#snap_lat", :name => "snap[lat]"
      assert_select "input#snap_long", :name => "snap[long]"
      assert_select "input#snap_event_id", :name => "snap[event_id]"
    end
  end
end
