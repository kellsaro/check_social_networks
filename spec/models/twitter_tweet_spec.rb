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
require 'rails_helper'

RSpec.describe TwitterTweet, type: :model do
  describe "Validations" do
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:tweet) }
  end
end
