class SocialNetworksController < ApplicationController
  def index
    @twitter = TwitterTweet.all
    @facebook = FacebookStatus.all
    @instagram = InstagramPhoto.all
  end

  def update
  end
end
