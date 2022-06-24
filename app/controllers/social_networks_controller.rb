class SocialNetworksController < ApplicationController
  def index
    @twitter = [
      {
        "username": "@GuyEndoreKaiser",
        "tweet": "Hoping to work with Stadium Goods!"
      }
    ]

    @facebook = [{
        "name": "Some Friend",
        "status": "Happy in interview process with  Stadium Goods!"
      }
    ]

    @instagram = [
      {
        "username": "hipster1",
        "picture": "enjoy_coding"
      }
    ]
  end

  def update
  end
end
