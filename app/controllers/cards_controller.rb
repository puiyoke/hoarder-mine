class CardsController < ApplicationController

    def index
    end
    
    def new
        @card = Card.new
    end

    def create
        @card = Card.create(card_params)
        flash[:notice] = "Card Successfully Created"
        redirect_to '/'
    end

    def show
        @card = Card.find(params[:id])
    end

    def edit
        @card = Card.find(params[:id])
    end

    def update
        @card = Card.find(params[:id])
        @card.update_attributes(card_params)
        flash[:notice] = "Update Succesful"
        redirect_to card_path
    end

    def destroy
        @card = Card.find(params[:id])
        @card.destroy
        flash[:notice] = "Card Successfully Deleted"
        redirect_to '/'
    end

    def card_params
        params.require(:card).permit(:image, :remote_image_url, :name, :release_country, :release_year)
    end

end