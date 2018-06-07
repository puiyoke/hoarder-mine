class Card < ApplicationRecord
    mount_uploader :image, AvatarUploader
  end
  