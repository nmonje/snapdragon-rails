require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe SnapsController do

  def mock_snap(stubs={})
    @mock_snap ||= mock_model(Snap, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all snaps as @snaps" do
      Snap.stub(:all) { [mock_snap] }
      get :index
      assigns(:snaps).should eq([mock_snap])
    end
  end

  describe "GET show" do
    it "assigns the requested snap as @snap" do
      Snap.stub(:find).with("37") { mock_snap }
      get :show, :id => "37"
      assigns(:snap).should be(mock_snap)
    end
  end

  describe "GET new" do
    it "assigns a new snap as @snap" do
      Snap.stub(:new) { mock_snap }
      get :new
      assigns(:snap).should be(mock_snap)
    end
  end

  describe "GET edit" do
    it "assigns the requested snap as @snap" do
      Snap.stub(:find).with("37") { mock_snap }
      get :edit, :id => "37"
      assigns(:snap).should be(mock_snap)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created snap as @snap" do
        Snap.stub(:new).with({'these' => 'params'}) { mock_snap(:save => true) }
        post :create, :snap => {'these' => 'params'}
        assigns(:snap).should be(mock_snap)
      end

      it "redirects to the created snap" do
        Snap.stub(:new) { mock_snap(:save => true) }
        post :create, :snap => {}
        response.should redirect_to(snap_url(mock_snap))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved snap as @snap" do
        Snap.stub(:new).with({'these' => 'params'}) { mock_snap(:save => false) }
        post :create, :snap => {'these' => 'params'}
        assigns(:snap).should be(mock_snap)
      end

      it "re-renders the 'new' template" do
        Snap.stub(:new) { mock_snap(:save => false) }
        post :create, :snap => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested snap" do
        Snap.stub(:find).with("37") { mock_snap }
        mock_snap.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :snap => {'these' => 'params'}
      end

      it "assigns the requested snap as @snap" do
        Snap.stub(:find) { mock_snap(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:snap).should be(mock_snap)
      end

      it "redirects to the snap" do
        Snap.stub(:find) { mock_snap(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(snap_url(mock_snap))
      end
    end

    describe "with invalid params" do
      it "assigns the snap as @snap" do
        Snap.stub(:find) { mock_snap(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:snap).should be(mock_snap)
      end

      it "re-renders the 'edit' template" do
        Snap.stub(:find) { mock_snap(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested snap" do
      Snap.stub(:find).with("37") { mock_snap }
      mock_snap.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the snaps list" do
      Snap.stub(:find) { mock_snap }
      delete :destroy, :id => "1"
      response.should redirect_to(snaps_url)
    end
  end

end
