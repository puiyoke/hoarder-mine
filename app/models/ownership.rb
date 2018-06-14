class Ownership < ApplicationRecord
    belongs_to :user
    belongs_to :card
    enum status: {owned: 0, wishlist: 1}
end
  