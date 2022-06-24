require 'rails_helper'

RSpec.describe ApiGateway do
  class MockedHttpResponse
    attr_accessor :code, :body

    def initialize(code: 200, body: "response body")
      self.code = code
      self.body = body
    end
  end

  it "returns request response body" do
    social_network = :twitter
    url = "https://takehome.io/#{social_network}"

    http_response = MockedHttpResponse.new
    expect(HTTParty).to receive(:get).with(url).and_return(http_response)

    resp = ApiGateway.get(social_network)
    expect(resp).to eq("response body")
  end

  it "raises ArgumentError if argument is non of :twitter :facebook :instagram" do
    social_network = :linkedin
    url = "https://takehome.io/#{social_network}"
    expect { ApiGateway.get(social_network) }.to raise_error(ArgumentError, "Requests to linkedin are not implemented.")
  end

  it "raises an error when the response code is not 200" do
    social_network = :twitter
    url = "https://takehome.io/#{social_network}"

    http_response = MockedHttpResponse.new(code: 400)
    expect(HTTParty).to receive(:get).with(url).and_return(http_response)

    expect { ApiGateway.get(social_network) }.to raise_error(StandardError, "Response error code(400) when trying to fetch https://takehome.io/twitter")
  end
end