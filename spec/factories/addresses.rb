FactoryBot.define do

  factory :address do
    postal_code {Faker::Number.number(7).to_s}
    prefecture  {"兵庫県"}
    city        {"神戸市中央区"}
    address     {"海岸通1-2-3"}
    building    {"マンション123号"}
    tel         {Faker::Number.number(11).to_s}
    user_id     {1}
  end
end
