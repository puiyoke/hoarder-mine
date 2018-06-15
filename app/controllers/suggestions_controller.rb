class SuggestionsController < ApplicationController

    def new
        @suggest = Suggestion.new
    end

    def create
        @suggest = Suggestion.create(suggestion_params)
        flash[:notice] = "Card successfully submitted for review"
        redirect_to '/'
    end

    def suggestion_params
        params.require(:suggestion).permit(:user_id, :image, :remote_image_url, :name, :release_country, :release_year, :details)
    end
end