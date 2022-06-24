class GetTwitterTweetsJob < ApplicationJob
  queue_as :default
  retry_on StandardError

  def perform(*args)
    data = JSON.parse(ApiGateway.get(:twitter))
    unless data.nil? || data.empty?
      data.each { |tweet| TwitterTweet.create!(tweet) }
    end
  end
end
