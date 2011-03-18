require "spec_helper"

describe SnapsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/snaps" }.should route_to(:controller => "snaps", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/snaps/new" }.should route_to(:controller => "snaps", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/snaps/1" }.should route_to(:controller => "snaps", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/snaps/1/edit" }.should route_to(:controller => "snaps", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/snaps" }.should route_to(:controller => "snaps", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/snaps/1" }.should route_to(:controller => "snaps", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/snaps/1" }.should route_to(:controller => "snaps", :action => "destroy", :id => "1")
    end

  end
end
