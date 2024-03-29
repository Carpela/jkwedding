require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe GuestsController do

  # This should return the minimal set of attributes required to create a valid
  # Guest. As you add validations to Guest, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "firstname" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GuestsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all guests as @guests" do
      guest = Guest.create! valid_attributes
      get :index, {}, valid_session
      assigns(:guests).should eq([guest])
    end
  end

  describe "GET show" do
    it "assigns the requested guest as @guest" do
      guest = Guest.create! valid_attributes
      get :show, {:id => guest.to_param}, valid_session
      assigns(:guest).should eq(guest)
    end
  end

  describe "GET new" do
    it "assigns a new guest as @guest" do
      get :new, {}, valid_session
      assigns(:guest).should be_a_new(Guest)
    end
  end

  describe "GET edit" do
    it "assigns the requested guest as @guest" do
      guest = Guest.create! valid_attributes
      get :edit, {:id => guest.to_param}, valid_session
      assigns(:guest).should eq(guest)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Guest" do
        expect {
          post :create, {:guest => valid_attributes}, valid_session
        }.to change(Guest, :count).by(1)
      end

      it "assigns a newly created guest as @guest" do
        post :create, {:guest => valid_attributes}, valid_session
        assigns(:guest).should be_a(Guest)
        assigns(:guest).should be_persisted
      end

      it "redirects to the created guest" do
        post :create, {:guest => valid_attributes}, valid_session
        response.should redirect_to(Guest.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved guest as @guest" do
        # Trigger the behavior that occurs when invalid params are submitted
        Guest.any_instance.stub(:save).and_return(false)
        post :create, {:guest => { "firstname" => "invalid value" }}, valid_session
        assigns(:guest).should be_a_new(Guest)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Guest.any_instance.stub(:save).and_return(false)
        post :create, {:guest => { "firstname" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested guest" do
        guest = Guest.create! valid_attributes
        # Assuming there are no other guests in the database, this
        # specifies that the Guest created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Guest.any_instance.should_receive(:update_attributes).with({ "firstname" => "MyString" })
        put :update, {:id => guest.to_param, :guest => { "firstname" => "MyString" }}, valid_session
      end

      it "assigns the requested guest as @guest" do
        guest = Guest.create! valid_attributes
        put :update, {:id => guest.to_param, :guest => valid_attributes}, valid_session
        assigns(:guest).should eq(guest)
      end

      it "redirects to the guest" do
        guest = Guest.create! valid_attributes
        put :update, {:id => guest.to_param, :guest => valid_attributes}, valid_session
        response.should redirect_to(guest)
      end
    end

    describe "with invalid params" do
      it "assigns the guest as @guest" do
        guest = Guest.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Guest.any_instance.stub(:save).and_return(false)
        put :update, {:id => guest.to_param, :guest => { "firstname" => "invalid value" }}, valid_session
        assigns(:guest).should eq(guest)
      end

      it "re-renders the 'edit' template" do
        guest = Guest.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Guest.any_instance.stub(:save).and_return(false)
        put :update, {:id => guest.to_param, :guest => { "firstname" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested guest" do
      guest = Guest.create! valid_attributes
      expect {
        delete :destroy, {:id => guest.to_param}, valid_session
      }.to change(Guest, :count).by(-1)
    end

    it "redirects to the guests list" do
      guest = Guest.create! valid_attributes
      delete :destroy, {:id => guest.to_param}, valid_session
      response.should redirect_to(guests_url)
    end
  end

end
