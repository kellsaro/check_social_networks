require 'rails_helper'

RSpec.describe GetTwitterTweetsJob, type: :job do
  let(:data) { "[{\"username\":\"@GuyEndoreKaiser\",\"tweet\":\"Hoping to work with Stadium Goods!\"}]" }

  it "creates twitter records in database" do
    expect(ApiGateway).to receive(:get).with(:twitter).and_return(data)
    GetTwitterTweetsJob.perform_now
    expect(TwitterTweet.count).to eq(1)
    expect(TwitterTweet.first.tweet).to eq("Hoping to work with Stadium Goods!")
  end
end
