class HomeController < ApplicationController

    def index
        @card = Card.all.order('created_at DESC')
    end
    
end