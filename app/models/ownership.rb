class Ownership < ApplicationRecord
    belongs_to :user
    belongs_to :card
    enum status: {not_interested: 0, owned: 1, wishlist: 2}
end
  