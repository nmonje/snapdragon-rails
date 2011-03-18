require "spec_helper"

describe BurstsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/bursts" }.should route_to(:controller => "bursts", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/bursts/new" }.should route_to(:controller => "bursts", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/bursts/1" }.should route_to(:controller => "bursts", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/bursts/1/edit" }.should route_to(:controller => "bursts", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/bursts" }.should route_to(:controller => "bursts", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/bursts/1" }.should route_to(:controller => "bursts", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/bursts/1" }.should route_to(:controller => "bursts", :action => "destroy", :id => "1")
    end

  end
end
