require 'rails_helper'

RSpec.describe "SocialNetworks", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/"
      expect(response).to have_http_status(:success)
    end

    it "returns tweets" do
      get "/"
      # remember mocking the external request
      expect(json["twitter"]).to_not be_empty
      expect(json["twitter"].length).to eq(1)
      expect(json["twitter"][0]["tweet"]).to include("Hoping to work with Stadium Goods!")
    end

    it "returns facebook's status" do
      get "/"
      # remember mocking the external request
      expect(json["facebook"]).to_not be_empty
      expect(json["facebook"].length).to eq(1)
      expect(json["facebook"][0]["status"]).to include("Happy in interview process with  Stadium Goods!")
    end

    it "returns instagram photos" do
      get "/"
      # remember mocking the external request
      expect(json["instagram"]).to_not be_empty
      expect(json["instagram"].length).to eq(1)
      expect(json["instagram"][0]["photo"]).to include("enjoy_coding")
    end
  end

  describe "GET /update" do
    xit "returns http success" do
      get "/social_networks/update"
      expect(response).to have_http_status(:success)
    end
  end

end
