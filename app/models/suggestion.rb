class Suggestion < ApplicationRecord
    mount_uploader :image, AvatarUploader
end