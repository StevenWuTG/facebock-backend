class PalsController < ApplicationController

    def index
        pals = Pal.all
        render json: pals, except: [:created_at, :updated_at]
    end

end
