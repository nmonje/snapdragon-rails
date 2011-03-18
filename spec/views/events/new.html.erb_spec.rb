require 'spec_helper'

describe "events/new.html.erb" do
  before(:each) do
    assign(:event, stub_model(Event,
      :lat => "9.99",
      :long => "9.99",
      :radius => "9.99",
      :title => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path, :method => "post" do
      assert_select "input#event_lat", :name => "event[lat]"
      assert_select "input#event_long", :name => "event[long]"
      assert_select "input#event_radius", :name => "event[radius]"
      assert_select "input#event_title", :name => "event[title]"
      assert_select "textarea#event_description", :name => "event[description]"
    end
  end
end
