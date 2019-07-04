require 'rails_helper'
describe Item do
  describe '#create' do

    #出品可能
    it "is valid with a name, description, condition, delivery_fee, area, delivery_date, price, buyer_id, saler_id, size, category_id, brand_id " do
      item = build(:item)
      expect(item).to be_valid
    end

    #出品不可能(商品名なし)
    it "is invalid without a name" do
      item = build(:item, name: nil)
      item.valid?
      expect(item.errors[:name]).to include("商品名を入力してください")
    end

    #出品不可能（説明文なし）
    it "is invalid without a description" do
      item = build(:item, description: nil)
      item.valid?
      expect(item.errors[:description]).to include("商品説明を入力してください")
    end

    #出品不可能（状態なし）
    it "is invalid without a condition" do
      item = build(:item, condition: nil)
      item.valid?
      expect(item.errors[:condition]).to include("商品の状態を入力してください")
    end

    #出品不可能(発送料なし)
    it "is invalid without a delivery_fee" do
      item = build(:item, delivery_fee: nil)
      item.valid?
      expect(item.errors[:delivery_fee]).to include("発送料を入力してください")
    end

    #出品不可能(発送地域なし)
    it "is invalid without a area" do
      item = build(:item, area: nil)
      item.valid?
      expect(item.errors[:area]).to include("発送地域を入力してください")
    end

    #出品不可能(発送までの日数なし)
    it "is invalid without a delivery_date" do
      item = build(:item, delivery_date: nil)
      item.valid?
      expect(item.errors[:delivery_date]).to include("発送までの日数を入力してください")
    end

    #出品不可能（値段なし）
    it "is invalid without a price" do
      item = build(:item, price: nil)
      item.valid?
      expect(item.errors[:price]).to include("料金を入力してください")
    end
  end
end
