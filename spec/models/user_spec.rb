require 'rails_helper'

describe User do
  describe '#create' do

    # 登録可能
    it "is valid with a nickname, email, password, password_confirmation, family_name, last_name, family_name_kana, last_name_kana, birth_year, birth_month, birth_day" do
      user = build(:user)
      expect(user).to be_valid
    end

    # 登録不可能(ニックネームなし)
    it "is invalid without a nickname" do
      user = build(:user, nickname: nil)
      user.valid?
      expect(user.errors[:nickname]).to include("ニックネームを入力してください")
    end

    # 登録不可能(メールアドレスなし)
    it "is invalid without a email" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("メールアドレスを入力してください")
    end

    # 登録不可能(パスワードなし)
    it "is invalid without a password" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("パスワードを入力してください")
    end

    # 登録不可能(パスワード（確認）なし)
    it "is invalid without password_confirmation" do
      user = build(:user, password_confirmation: nil)
      user.valid?
      expect(user.errors[:password_confirmation]).to include("パスワード(確認)を入力してください")
    end

    # 登録不可能(姓なし)
    it "is invalid without family_name" do
      user = build(:user, family_name: nil)
      user.valid?
      expect(user.errors[:family_name]).to include("姓を入力してください")
    end

    # 登録不可能(名なし)
    it "is invalid without last_name" do
      user = build(:user, last_name: nil)
      user.valid?
      expect(user.errors[:last_name]).to include("名を入力してください")
    end

    # 登録不可能(セイなし)
    it "is invalid without family_name_kana" do
      user = build(:user, family_name_kana: nil)
      user.valid?
      expect(user.errors[:family_name_kana]).to include("姓(カナ)を入力してください")
    end

    # 登録不可能(メイなし)
    it "is invalid without last_name_kana" do
      user = build(:user, last_name_kana: nil)
      user.valid?
      expect(user.errors[:last_name_kana]).to include("名(カナ)を入力してください")
    end

    # 登録不可能(生年なし)
    it "is invalid without birth_year" do
      user = build(:user, birth_year: nil)
      user.valid?
      expect(user.errors[:birth_year]).to include("生年を選択してください")
    end

    # 登録不可能(生年月なし)
    it "is invalid without birth_month" do
      user = build(:user, birth_month: nil)
      user.valid?
      expect(user.errors[:birth_month]).to include("生年月を選択してください")
    end
  
    # 登録不可能(生年日なし)
    it "is invalid without birth_day" do
      user = build(:user, birth_day: nil)
      user.valid?
      expect(user.errors[:birth_day]).to include("生年日を選択してください")
    end

    # 登録不可能(一意性)
    it "is invalid with a duplicate email address" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("既に存在するメールアドレスです")
    end

    # 登録不可能（フォーマットエラー：email、@なし）
    it "is invalid with wrong email format(without '@')" do
      user = build(:user, email: "tester1.gmail.com")
      user.valid?
      expect(user.errors[:email]).to include("フォーマットが不適切です")
    end

    # 登録不可能（フォーマットエラー：email、@前文字なし）
    it "is invalid with wrong email format(without characters before @)" do
      user = build(:user, email: "@gmail.com")
      user.valid?
      expect(user.errors[:email]).to include("フォーマットが不適切です")
    end

    # 登録不可能（フォーマットエラー：email、@後文字なし）
    it "is invalid with wrong email format(without characters after @)" do
      user = build(:user, email: "tester1@")
      user.valid?
      expect(user.errors[:email]).to include("フォーマットが不適切です")
    end

    # 登録不可能（フォーマットエラー：email、最後尾文字が数字）
    it "is invalid with wrong email format(last character is number)" do
      user = build(:user, email: "tester1@gmail.com1")
      user.valid?
      expect(user.errors[:email]).to include("フォーマットが不適切です")
    end

    # 登録不可能(パスワードが５文字以下)
    it "is invalid with a password that has less than 5 characters " do
      user = build(:user, password: "00000", password_confirmation: "00000")
      user.valid?
      expect(user.errors[:password]).to include("パスワードは6文字以上で入力してください")
    end

    # 登録不可能(パスワードとパスワード（確認）が一致しない)
    it "is invalid with different password" do
      user = build(:user, password: Faker::Lorem.characters(8), password_confirmation: Faker::Lorem.characters(9))
      user.valid?
      expect(user.errors[:password_confirmation]).to include("パスワードとパスワード（確認）が一致しません")
    end

    # 登録不可能（フォーマットエラー：password、数字のみ）
    it "is invalid with wrong password format(with only numbers)" do
      password = "12345678"
      user = build(:user, password: password, password_confirmation: password)
      user.valid?
      expect(user.errors[:password]).to include("数字のみのパスワードは設定できません")
    end

    # it "is invalid without a password_confirmation although with a password" do
    #   user = build(:user, password_confirmation: "")
    #   user.valid?
    #   expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    # end

  end
end
