class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:facebook]
  
  validates :nickname, presence: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :email, presence: true

  has_many :items
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.nickname = auth.info.name
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      # user.avatar = auth.info.image
    end
  end
end
