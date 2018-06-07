class OwnershipsController < ApplicationController
    
    def new
        @ownership = Ownership.new
    end

    def create
        @ownership = Ownership.create(ownership_params)
        flash[:notice] = "Ownership Successfully Created"
        redirect_to '/'
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
    end

    def ownership_params
        params.require(:ownership).permit(:user_id, :card_id, :status)
    end

end