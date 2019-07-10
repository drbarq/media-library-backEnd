FactoryBot.define do
    factory :podcast do
      episodeName { Faker::Lorem.word }
      url { Faker::Lorem.word }
      comment { Faker::Lorem.word }
      showName { Faker::Lorem.word }
      # group_id nil
      user_id nil
    end
  end