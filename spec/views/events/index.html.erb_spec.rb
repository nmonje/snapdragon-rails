require 'spec_helper'

describe "events/index.html.erb" do
  before(:each) do
    assign(:events, [
      stub_model(Event,
        :lat => "9.99",
        :long => "9.99",
        :radius => "9.99"
      ),
      stub_model(Event,
        :lat => "9.99",
        :long => "9.99",
        :radius => "9.99"
      )
    ])
  end

  it "renders a list of events" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
