class User < ApplicationRecord
 has_many :items
 has_many :comments
 has_many :likes
 has_one :address
 has_one :card
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:facebook, :google_oauth2]
  
  validates :nickname,
    presence: { message: "ニックネームを入力してください" }
  validates :email,
    presence: { message: "メールアドレスを入力してください" },
    uniqueness: { message: "既に存在するメールアドレスです" },
    format: { with: /\A[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*[a-zA-Z]+\z/, allow_blank: true, message: "フォーマットが不適切です" }
  validates :password,
    presence: { message: "パスワードを入力してください" },
    confirmation: { message: "パスワードとパスワード（確認）が一致しません" },
    length: { minimum: 6, message: "パスワードは6文字以上で入力してください" },
    format: { with: /\A(?=.*[^\d])+/, allow_blank: true, message: "数字のみのパスワードは設定できません" }
  validates :password_confirmation,
    presence: { message: "パスワード(確認)を入力してください" }
  validates :family_name,
    presence: { message: "姓を入力してください" }
  validates :last_name,
    presence: { message: "名を入力してください" }
  validates :family_name_kana,
    presence: { message: "姓(カナ)を入力してください" }
  validates :last_name_kana,
    presence: { message: "名(カナ)を入力してください" }
  validates :birth_year,
    presence: { message: "生年を選択してください" }
  validates :birth_month,
    presence: { message: "生年月を選択してください" }
  validates :birth_day,
    presence: { message: "生年日を選択してください" }
  
  def self.find_for_google_oauth2(auth)
    user = User.where(email: auth.info.email).first
    unless user
      user = User.create(nickname:     auth.info.name,
                         provider: auth.provider,
                         uid:      auth.uid,
                         email:    auth.info.email,
                         password: Devise.friendly_token[0, 20])
    end
    user
  end

  def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first

    unless user
      user = User.create(
        uid:      auth.uid,
        provider: auth.provider,
        email:    auth.info.email,
        nickname:  auth.info.name,
        password: Devise.friendly_token[0, 20],
        
      )
    end
    user
  end

  enum birth_years: [:"1960", :"1961", :"1962", :"1963", :"1964", :"1965", :"1966", :"1967", :"1968", :"1969", :"1970", :"1971", :"1972", :"1973", :"1974", :"1975", :"1976", :"1977", :"1978", :"1979", :"1980", :"1981", :"1982", :"1983", :"1984", :"1985", :"1986", :"1987", :"1988", :"1989", :"1990", :"1991", :"1992", :"1993", :"1994", :"1995", :"1996", :"1997", :"1998", :"1999", :"2000", :"2001", :"2002", :"2003", :"2004", :"2005", :"2006", :"2007", :"2008", :"2009", :"2010", :"2011", :"2012", :"2013", :"2014", :"2015", :"2016", :"2017", :"2018", :"2019"]

  enum birth_months: [:"1", :"2", :"3", :"4", :"5", :"6", :"7", :"8", :"9", :"10", :"11", :"12"], _suffix: true

  enum birth_days: [:"1", :"2", :"3", :"4", :"5", :"6", :"7", :"8", :"9", :"10", :"11", :"12", :"13", :"14", :"15", :"16", :"17", :"18", :"19", :"20", :"21", :"22", :"23", :"24", :"25", :"26", :"27", :"28", :"29", :"30", :"31"], _suffix: true
end
