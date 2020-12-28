class MessagesController < ApplicationController

    def index
        messages = Message.all
        render json: messages, except: [:created_at, :updated_at]
    end

end
