require 'rails_helper'

describe Card do
  describe '#create' do

    # 登録可能
    it "is valid with a card_number, expiration_year, expiration_month, security_code" do
      card = build(:card)
      expect(card).to be_valid
    end

    # 登録不可能(カード番号なし)
    it "is invalid without a card_number" do
      card = build(:card, card_number: nil)
      card.valid?
      expect(card.errors[:card_number]).to include("カード番号を入力してください")
    end

    # 登録不可能(年なし)
    it "is invalid without a expiration_year" do
      card = build(:card, expiration_year: nil)
      card.valid?
      expect(card.errors[:expiration_year]).to include("年を選択してください")
    end

    # 登録不可能(月なし)
    it "is invalid without a expiration_month" do
      card = build(:card, expiration_month: nil)
      card.valid?
      expect(card.errors[:expiration_month]).to include("月を選択してください")
    end

    # 登録不可能(セキュリティコードなし)
    it "is invalid without a security_code" do
      card = build(:card, security_code: nil)
      card.valid?
      expect(card.errors[:security_code]).to include("セキュリティコードを選択してください")
    end

    # # 登録不可能(一意性)
    # it "is invalid with a duplicate card_number" do
    #   card = create(:card)
    #   another_card = build(:card, card_number: card.card_number)
    #   another_card.valid?
    #   expect(another_card.errors[:card_number]).to include("この番号は既に登録されています")
    # end

    # 登録不可能（フォーマットエラー：カード番号、数字以外が含まれている）
    it "is invalid with wrong card_number format(contains non-numeric characters)" do
      card = build(:card, card_number: "1234abcd5678efgh")
      card.valid?
      expect(card.errors[:card_number]).to include("この番号は登録できません")
    end

    # 登録不可能（フォーマットエラー：セキュリティ番号、数字以外が含まれている）
    it "is invalid with wrong security_code format(contains non-numeric characters)" do
      card = build(:card, security_code: "12a")
      card.valid?
      expect(card.errors[:security_code]).to include("この番号は登録できません")
    end

  end
end
