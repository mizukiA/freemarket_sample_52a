class User < ApplicationRecord
 has_many :items
 has_many :comments
 has_many :likes
 has_one :profile
 has_one :address
 has_one :card
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:facebook, :google_oauth2]
  
  validates :nickname, presence: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :email, presence: true

  has_many :items
  
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
end
