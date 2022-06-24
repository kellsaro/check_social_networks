FactoryBot.define do
  factory :twitter_tweet do
    tweet { Faker::Hipster.sentence }
    username { Faker::Internet.username(specifier: 5) }
  end
end