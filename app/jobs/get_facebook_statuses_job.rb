class GetFacebookStatusesJob < ApplicationJob
  queue_as :default
  retry_on RuntimeError

  def perform(*args)
    data = JSON.parse(ApiGateway.get(:facebook))
    unless data.nil? || data.empty?
      data.each { |status| FacebookStatus.create!(status) }
    end
  end
end
