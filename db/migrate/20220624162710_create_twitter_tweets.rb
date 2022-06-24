class CreateTwitterTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :twitter_tweets do |t|
      t.string :username
      t.string :tweet

      t.timestamps
    end
  end
end
