class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username, uniqueness: { case_sensitive: false }
  enum role: [:hoarder, :admin]
  mount_uploader :avatar, AvatarUploader
  has_many :ownerships, dependent: :destroy
  has_many :cards, through: :ownerships
end
