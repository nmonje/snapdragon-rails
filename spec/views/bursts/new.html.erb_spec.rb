require 'spec_helper'

describe "bursts/new.html.erb" do
  before(:each) do
    assign(:burst, stub_model(Burst,
      :event_id => 1
    ).as_new_record)
  end

  it "renders new burst form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bursts_path, :method => "post" do
      assert_select "input#burst_event_id", :name => "burst[event_id]"
    end
  end
end
