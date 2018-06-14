class UsersController < ApplicationController
    def owned
        @owned = current_user.cards
        @ownership = current_user.ownerships
    end

    def wishlist
    end
end