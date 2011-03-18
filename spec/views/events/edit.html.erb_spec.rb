require 'spec_helper'

describe "events/edit.html.erb" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :lat => "9.99",
      :long => "9.99",
      :radius => "9.99"
    ))
  end

  it "renders the edit event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path(@event), :method => "post" do
      assert_select "input#event_lat", :name => "event[lat]"
      assert_select "input#event_long", :name => "event[long]"
      assert_select "input#event_radius", :name => "event[radius]"
    end
  end
end
