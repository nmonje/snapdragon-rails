require 'spec_helper'

describe "profiles/index.html.erb" do
  before(:each) do
    assign(:profiles, [
      stub_model(Profile,
        :user_id => 1,
        :avatar_url => "Avatar Url"
      ),
      stub_model(Profile,
        :user_id => 1,
        :avatar_url => "Avatar Url"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Avatar Url".to_s, :count => 2
  end
end
