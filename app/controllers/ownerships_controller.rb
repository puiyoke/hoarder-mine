class OwnershipsController < ApplicationController
    
    def new
        @ownership = Ownership.new
    end

    def own
        @exist = Ownership.find_by(user_id: current_user.id) && Ownership.find_by(card_id: params[:id])
        if @exist
            Ownership.find_by(card_id: params[:id]).update(status: "owned")
            flash[:notice] = "Succesfully added to owned"
            redirect_to request.referrer
        else
            @ownership = Ownership.new
            @ownership.user_id = current_user.id
            @ownership.card_id = params[:id]
            @ownership.status = "owned"
            @ownership.save
            flash[:notice] = "Succesfully added to owned"
            redirect_to request.referrer
        end
    end

    def wish
        @exist = Ownership.find_by(user_id: current_user.id) && Ownership.find_by(card_id: params[:id])
        if @exist
            Ownership.find_by(card_id: params[:id]).update(status: "wishlist")
            flash[:notice] = "Succesfully added to wishlist"
            redirect_to request.referrer
        else
            @ownership = Ownership.new
            @ownership.user_id = current_user.id
            @ownership.card_id = params[:id]
            @ownership.status = "wishlist"
            @ownership.save
            flash[:notice] = "Succesfully added to wishlist"
            redirect_to request.referrer
        end
    end


    def show
    end

    def edit
    end

    def update
    end

    def destroy
        @exist = Ownership.find_by(user_id: current_user.id) && Ownership.find_by(card_id: params[:id])
        if @exist
            @exist.delete
            flash[:notice] = "Succesfully deleted from your personal list"
            redirect_to request.referrer
        else
            "Card not found in you personal collection"
        end
    end

    def ownership_params
        params.require(:ownership).permit(:user_id, :card_id, :status)
    end

end