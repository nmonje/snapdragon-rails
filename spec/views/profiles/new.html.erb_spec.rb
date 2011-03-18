require 'spec_helper'

describe "profiles/new.html.erb" do
  before(:each) do
    assign(:profile, stub_model(Profile,
      :user_id => 1,
      :avatar_url => "MyString"
    ).as_new_record)
  end

  it "renders new profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => profiles_path, :method => "post" do
      assert_select "input#profile_user_id", :name => "profile[user_id]"
      assert_select "input#profile_avatar_url", :name => "profile[avatar_url]"
    end
  end
end
