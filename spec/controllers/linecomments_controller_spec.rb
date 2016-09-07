require 'rails_helper'

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

RSpec.describe LinecommentsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Linecomment. As you add validations to Linecomment, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LinecommentsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all linecomments as @linecomments" do
      linecomment = Linecomment.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:linecomments)).to eq([linecomment])
    end
  end

  describe "GET #show" do
    it "assigns the requested linecomment as @linecomment" do
      linecomment = Linecomment.create! valid_attributes
      get :show, {:id => linecomment.to_param}, valid_session
      expect(assigns(:linecomment)).to eq(linecomment)
    end
  end

  describe "GET #new" do
    it "assigns a new linecomment as @linecomment" do
      get :new, {}, valid_session
      expect(assigns(:linecomment)).to be_a_new(Linecomment)
    end
  end

  describe "GET #edit" do
    it "assigns the requested linecomment as @linecomment" do
      linecomment = Linecomment.create! valid_attributes
      get :edit, {:id => linecomment.to_param}, valid_session
      expect(assigns(:linecomment)).to eq(linecomment)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Linecomment" do
        expect {
          post :create, {:linecomment => valid_attributes}, valid_session
        }.to change(Linecomment, :count).by(1)
      end

      it "assigns a newly created linecomment as @linecomment" do
        post :create, {:linecomment => valid_attributes}, valid_session
        expect(assigns(:linecomment)).to be_a(Linecomment)
        expect(assigns(:linecomment)).to be_persisted
      end

      it "redirects to the created linecomment" do
        post :create, {:linecomment => valid_attributes}, valid_session
        expect(response).to redirect_to(Linecomment.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved linecomment as @linecomment" do
        post :create, {:linecomment => invalid_attributes}, valid_session
        expect(assigns(:linecomment)).to be_a_new(Linecomment)
      end

      it "re-renders the 'new' template" do
        post :create, {:linecomment => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested linecomment" do
        linecomment = Linecomment.create! valid_attributes
        put :update, {:id => linecomment.to_param, :linecomment => new_attributes}, valid_session
        linecomment.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested linecomment as @linecomment" do
        linecomment = Linecomment.create! valid_attributes
        put :update, {:id => linecomment.to_param, :linecomment => valid_attributes}, valid_session
        expect(assigns(:linecomment)).to eq(linecomment)
      end

      it "redirects to the linecomment" do
        linecomment = Linecomment.create! valid_attributes
        put :update, {:id => linecomment.to_param, :linecomment => valid_attributes}, valid_session
        expect(response).to redirect_to(linecomment)
      end
    end

    context "with invalid params" do
      it "assigns the linecomment as @linecomment" do
        linecomment = Linecomment.create! valid_attributes
        put :update, {:id => linecomment.to_param, :linecomment => invalid_attributes}, valid_session
        expect(assigns(:linecomment)).to eq(linecomment)
      end

      it "re-renders the 'edit' template" do
        linecomment = Linecomment.create! valid_attributes
        put :update, {:id => linecomment.to_param, :linecomment => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested linecomment" do
      linecomment = Linecomment.create! valid_attributes
      expect {
        delete :destroy, {:id => linecomment.to_param}, valid_session
      }.to change(Linecomment, :count).by(-1)
    end

    it "redirects to the linecomments list" do
      linecomment = Linecomment.create! valid_attributes
      delete :destroy, {:id => linecomment.to_param}, valid_session
      expect(response).to redirect_to(linecomments_url)
    end
  end

end
