require 'spec_helper'

describe "bursts/index.html.erb" do
  before(:each) do
    assign(:bursts, [
      stub_model(Burst,
        :event_id => 1
      ),
      stub_model(Burst,
        :event_id => 1
      )
    ])
  end

  it "renders a list of bursts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
