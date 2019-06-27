class Card < ApplicationRecord
  belongs_to :user, optional: true

  def self.expiration_years
    min_year = Time.new.year.to_s[2,2].to_i
    max_year = min_year + 10
    return years = [*(min_year..max_year)]
  end

  enum expiration_months: [:"01", :"02", :"03", :"04", :"05", :"06", :"07", :"08", :"09", :"10", :"11", :"12"]

  validates :card_number,
    presence: { message: "カード番号を入力してください" },
    uniqueness: { message: "この番号は既に登録されています" },
    format: { with: /\A\d{14,16}\z/, allow_blank: true, message: "この番号は登録できません" }
  validates :expiration_year,
    presence: { message: "年を選択してください" }
  validates :expiration_month,
    presence: { message: "月を選択してください" }
  validates :security_code,
    presence: { message: "セキュリティコードを選択してください" },
    format: { with: /\A\d{3,4}\z/, allow_blank: true, message: "この番号は登録できません" }
end
