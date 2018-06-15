class Report < ApplicationRecord
    mount_uploader :image, AvatarUploader
end