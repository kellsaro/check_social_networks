require 'rails_helper'

RSpec.describe GetInstagramPhotosJob, type: :job do
  let(:data) {"[{\"username\":\"hipster1\",\"picture\":\"enjoy_coding.jpg\"},{\"username\":\"hipster2\",\"picture\":\"coffee\"}]" }

  it "creates instagram records in database" do
    expect(ApiGateway).to receive(:get).with(:instagram).and_return(data)
    GetInstagramPhotosJob.perform_now
    expect(InstagramPhoto.count).to eq(2)
    expect(InstagramPhoto.first.picture).to eq("enjoy_coding.jpg")
  end
end
