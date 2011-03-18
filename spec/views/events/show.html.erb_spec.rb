require 'spec_helper'

describe "events/show.html.erb" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :lat => "9.99",
      :long => "9.99",
      :radius => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
  end
end
