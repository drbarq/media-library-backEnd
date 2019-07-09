FactoryBot.define do
    factory :podcast do
      title { Faker::Lorem.word }
      url { Faker::Lorem.word }
      comment { Faker::Lorem.word }
      author { Faker::Lorem.word }
      # group_id nil
      user_id nil
    end
  end