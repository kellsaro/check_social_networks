FactoryBot.define do
  factory :instagram_photo do
    username { Faker::Internet.username(specifier: 5) }
    picture { Faker::Avatar.image }
  end
end