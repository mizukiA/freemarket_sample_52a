FactoryBot.define do

  factory :user do
    password = "tester1234"

    nickname              {"abe"}
    sequence(:email)      {Faker::Internet.email}
    password              {password}
    password_confirmation {password}
    family_name           {"姓"}
    last_name             {"名"}
    family_name_kana      {"セイ"}
    last_name_kana        {"メイ"}
    birth_year            {"2000"}
    birth_month           {"1"}
    birth_day             {"1"}
    profile               {Faker::Lorem.paragraph}
  end

end
