class Address < ApplicationRecord
  belongs_to :user, optional: true

  validates :postal_code,
    presence: { message: "郵便番号を入力してください" },
    length: { maximum: 7, message: "7文字で入力して下さい" },
    format: { with: /\A\d{7}/, allow_blank: true, message: "この郵便番号は登録できません" }
  validates :prefecture,
    presence: { message: "都道府県を選択してください" }
  validates :city,
    presence: { message: "市区町村を入力してください" }
  validates :address,
    presence: { message: "番地を入力してください" }
  validates :tel,
    presence: { message: "電話番号を入力してください" },
    length: { maximum: 11, message: "11文字で入力して下さい" },
    uniqueness: { message: "この電話番号は既に登録されています" },
    format: { with: /\A\d{10,11}\z/, message: "この電話番号は登録できません" }

  enum prefectures: [ :"北海道", :"青森県", :"岩手県", :"宮城県", :"秋田県", :"山形県", :"福島県", :"茨城県", :"栃木県", :"群馬県",
                      :"埼玉県", :"千葉県", :"東京都", :"神奈川県", :"新潟県", :"富山県", :"石川県", :"福井県", :"山梨県", :"長野県",
                      :"岐阜県", :"静岡県", :"愛知県", :"三重県", :"滋賀県", :"京都府", :"大阪府", :"兵庫県", :"奈良県", :"和歌山県",
                      :"鳥取県", :"島根県", :"岡山県", :"広島県", :"山口県", :"徳島県", :"香川県", :"愛媛県", :"高知県", :"福岡県",
                      :"佐賀県", :"長崎県", :"熊本県", :"大分県", :"宮崎県", :"鹿児島県", :"沖縄県"
                    ]
end
