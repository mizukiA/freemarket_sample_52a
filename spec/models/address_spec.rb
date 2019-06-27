require 'rails_helper'

describe Address do
  describe '#create' do

    # 登録可能
    it "is valid with a postal_code, prefecture, city, address, tel" do
      address = build(:address)
      expect(address).to be_valid
    end

    # 登録不可能(郵便番号なし)
    it "is invalid without a postal_code" do
      address = build(:address, postal_code: nil)
      address.valid?
      expect(address.errors[:postal_code]).to include("郵便番号を入力してください")
    end

    # 登録不可能(都道府県なし)
    it "is invalid without a prefecture" do
      address = build(:address, prefecture: nil)
      address.valid?
      expect(address.errors[:prefecture]).to include("都道府県を選択してください")
    end

    # 登録不可能(市区町村なし)
    it "is invalid without a city" do
      address = build(:address, city: nil)
      address.valid?
      expect(address.errors[:city]).to include("市区町村を入力してください")
    end

    # 登録不可能(番地なし)
    it "is invalid without a address" do
      address = build(:address, address: nil)
      address.valid?
      expect(address.errors[:address]).to include("番地を入力してください")
    end

    # 登録不可能(電話番号なし)
    it "is invalid without a tel" do
      address = build(:address, tel: nil)
      address.valid?
      expect(address.errors[:tel]).to include("電話番号を入力してください")
    end

    # 登録不可能(郵便番号が8文字以上)
    it "is invalid with a postal_code that has more than 8 characters " do
      address = build(:address, postal_code: "12345678")
      address.valid?
      expect(address.errors[:postal_code]).to include("7文字で入力して下さい")
    end

    # 登録不可能（フォーマットエラー：郵便番号、数字以外が含まれている）
    it "is invalid with wrong postal_code format(contains non-numeric characters)" do
      address = build(:address, postal_code: "123abcd")
      address.valid?
      expect(address.errors[:postal_code]).to include("この郵便番号は登録できません")
    end

    # 登録不可能(電話番号が12文字以上)
    it "is invalid with a postal_code that has more than 12 characters " do
      address = build(:address, tel: "123456789012")
      address.valid?
      expect(address.errors[:tel]).to include("11文字で入力して下さい")
    end

    # 登録不可能(一意性)
    it "is invalid with a duplicate tel number" do
      address = create(:address)
      another_address = build(:address, tel: address.tel)
      another_address.valid?
      expect(another_address.errors[:tel]).to include("この電話番号は既に登録されています")
    end

    # 登録不可能（フォーマットエラー：電話番号、数字以外が含まれている）
    it "is invalid with wrong tel format(contains non-numeric characters)" do
      address = build(:address, tel: "123abcd8901")
      address.valid?
      expect(address.errors[:tel]).to include("この電話番号は登録できません")
    end

  end
end
