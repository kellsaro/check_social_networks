class ApiGateway
  def self.get(social_network)
    raise ArgumentError.new("Requests to #{social_network} are not implemented.") unless %i[twitter facebook instagram].include?(social_network)
    url = "https://takehome.io/#{social_network}"
    response = HTTParty.get(url)
    raise "Response error code(#{response.code}) when trying to fetch #{url}" if response.code != 200
    response.body
  end
end