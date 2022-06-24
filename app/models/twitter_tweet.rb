# == Schema Information
#
# Table name: twitter_tweets
#
#  id         :integer          not null, primary key
#  tweet      :string
#  username   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class TwitterTweet < ApplicationRecord
  validates :username, :tweet, presence: true
end
