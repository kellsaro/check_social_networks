class SocialNetworksController < ApplicationController
  def index
    @twitter = TwitterTweet.all
    @facebook = FacebookStatus.all
    @instagram = InstagramPhoto.all
  end

  def update
    GetTwitterTweetsJob.perform_later
    GetFacebookStatusesJob.perform_later
    GetInstagramPhotosJob.perform_later
    head :no_content
  end
end
