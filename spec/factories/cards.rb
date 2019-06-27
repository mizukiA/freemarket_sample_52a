FactoryBot.define do

  factory :card do
    card_number       {Faker::Number.number(16).to_s}
    expiration_year   {Time.new.year.to_s[2,2]}
    expiration_month  {"01"}
    security_code     {Faker::Number.number(3).to_s}
    user_id           {1}
  end
end
