class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :rooms  
  has_many :reservations
  
  validates :encrypted_password, presence: true, on: :create
  mount_uploader :user_image, UserImageUploader

  validates :username, :self_introduce, presence: true
end
