require 'spec_helper'

describe "bursts/edit.html.erb" do
  before(:each) do
    @burst = assign(:burst, stub_model(Burst,
      :event_id => 1
    ))
  end

  it "renders the edit burst form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bursts_path(@burst), :method => "post" do
      assert_select "input#burst_event_id", :name => "burst[event_id]"
    end
  end
end
