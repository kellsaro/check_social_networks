require 'rails_helper'

RSpec.describe "SocialNetworks", type: :request do
  include ActiveJob::TestHelper

  describe "GET /index" do
    let!(:tweet) { FactoryBot.create(:twitter_tweet, tweet: "Hoping to work with Stadium Goods!") }
    let!(:tweets) { create_list(:twitter_tweet, 3) }
    let!(:status) { FactoryBot.create(:facebook_status, status: "Happy in interview process with Stadium Goods!") }
    let!(:statuses) { create_list(:facebook_status, 3) }
    let!(:photo) { FactoryBot.create(:instagram_photo, picture: "enjoy_coding.jpg") }
    let!(:photos) { create_list(:instagram_photo, 3) }

    before { get "/" }

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "returns tweets" do
      expect(json["twitter"]).to_not be_empty
      expect(json["twitter"].length).to eq(4)
      expect(json["twitter"][0]["tweet"]).to eq("Hoping to work with Stadium Goods!")
    end

    it "returns facebook's status" do
      expect(json["facebook"]).to_not be_empty
      expect(json["facebook"].length).to eq(4)
      expect(json["facebook"][0]["status"]).to eq("Happy in interview process with Stadium Goods!")
    end

    it "returns instagram photos" do
      expect(json["instagram"]).to_not be_empty
      expect(json["instagram"].length).to eq(4)
      expect(json["instagram"][0]["photo"]).to eq("enjoy_coding.jpg")
    end
  end

  describe "PUT /update" do
    before { put "/" }

    it "returns http success" do
      expect(response).to have_http_status(:no_content)
    end

    it "enqueues 3 background jobs" do
      assert_enqueued_jobs 3
    end

    it "enqueues GetTwitterTweetsJob job" do
      assert_enqueued_with(job: GetTwitterTweetsJob)
    end

    it "enqueues GetFacebookStatusesJob job" do
      assert_enqueued_with(job: GetFacebookStatusesJob)
    end

    it "enqueues GetInstagramPhotosJob job" do
      assert_enqueued_with(job: GetInstagramPhotosJob)
    end
  end

end
