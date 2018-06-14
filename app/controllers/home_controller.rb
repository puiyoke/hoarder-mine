class HomeController < ApplicationController

    def index
        @card = Card.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 30)
    end
    
end