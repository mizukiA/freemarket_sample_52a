FactoryBot.define do
  factory :item do
    name {"商品名"}
    description {"説明文"}
    condition {"状況"}
    delivery_fee {"送料無料"}
    area {"東京都"}
    delivery_date {"2〜3日以内"}
    price {5000}
    buyer_id {1}
    saler_id {1}
    size {"M"}
    created_at {Faker::Time.between(2.days.ago, Time.now, :all)}
    category_id {1}
    brand_id {1}
  end
end
