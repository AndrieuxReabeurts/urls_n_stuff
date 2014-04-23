FactoryGirl.define do
  factory :url do
    long_url { Faker::Lorem.word}
    short_url { Faker::Lorem.word }
  end
end