require 'rails_helper'

RSpec.describe GetFacebookStatusesJob, type: :job do
  let(:data) { "[{\"name\":\"tylertyler\",\"status\":\"Happy in interview process with Stadium Goods!\"},{\"name\":\"arnulfo\",\"status\":\"Selvage brooklyn carry butcher literally small bat...\"}]" }

  it "creates facebook records in database" do
    expect(ApiGateway).to receive(:get).with(:facebook).and_return(data)
    GetFacebookStatusesJob.perform_now
    expect(FacebookStatus.count).to eq(2)
    expect(FacebookStatus.first.status).to eq("Happy in interview process with Stadium Goods!")
  end
end
