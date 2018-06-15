class UsersController < ApplicationController
    def owned
        @owned = current_user.cards.order("release_year")
        @ownership = current_user.ownerships
        @owned_count = @ownership.where(status: "owned")
    end

    def wishlist
        @owned = current_user.cards.order("release_year")
        @ownership = current_user.ownerships
        @wish_count = @ownership.where(status: "wishlist")
    end

    def suggest
    end

    def status
        @report = current_user.reports.order("status")
        @suggest = current_user.suggestions.order("status")
    end
end