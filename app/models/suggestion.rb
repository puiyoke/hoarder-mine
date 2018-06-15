class Suggestion < ApplicationRecord
    mount_uploader :image, AvatarUploader
    enum status: [:pending, :closed]
end