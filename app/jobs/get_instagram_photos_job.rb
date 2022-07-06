class GetInstagramPhotosJob < ApplicationJob
  queue_as :default
  retry_on RuntimeError

  def perform(*args)
    data = JSON.parse(ApiGateway.get(:instagram))
    unless data.nil? || data.empty?
      data.each { |photo| InstagramPhoto.create!(photo) }
    end
  end
end
