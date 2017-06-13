require 'rails_helper'

RSpec.describe DeviseTokenAuth::RegistrationsController, type: :controller do

  let(:valid_user_hash) {
    attributes_for(:user)
  }

  describe "#POST #create" do

    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
    end

    context "valid user" do

      it "should return a 200" do
        post :create, :params => valid_user_hash
        expect(response).to have_http_status(200)
      end

      it "should return json" do
        post :create, :params => valid_user_hash
        json_response = JSON.parse(response.body)
        expect(json_response["status"]).to eq("success")
      end

      it "should return status: success" do

        post :create, :params => valid_user_hash

      end

    end

  end

end
