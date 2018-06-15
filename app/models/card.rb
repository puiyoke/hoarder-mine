class Card < ApplicationRecord
  has_many :ownerships, dependent: :destroy
  has_many :users, through: :ownerships
  mount_uploader :image, AvatarUploader

  def self.search(search)
    if search
        where("name ILIKE ? OR release_country ILIKE ?", "%#{search}%", "%#{search}%").order("release_year")
    else
        scoped
    end
  end

end