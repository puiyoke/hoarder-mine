class Card < ApplicationRecord
  has_many :ownerships, dependent: :destroy
  has_many :users, through: :ownerships
  mount_uploader :image, AvatarUploader
end
  