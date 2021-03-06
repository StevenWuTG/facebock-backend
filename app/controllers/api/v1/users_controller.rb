class Api::V1::UsersController < ApplicationController
    # skip_before_action :authorized, only: [:create]
   

    def index
        users = User.all
        render json: users, except: [:created_at, :updated_at]
    end

    # def profile
        
    #     render json: { user: UserSerializer.new(current_user) }, status: :accepted
    # end

    def create
        # byebug
        @user = User.create!(user_params)
        if @user.valid?
            token = encode_token(user_id: @user.id)
            render json: { user: UserSerializer.new(@user), jwt: token }, status: :created

        else
            render json: {errors: user.errors} 
        end 
    end

    def show
        user = User.find(params[:id])
        render json: user, except: [:created_at, :updated_at]
    end

    def update
        user = User.find(params[:id])
        if (user.update!(user_params))
            render json: user
        else
            render json: {errors: user.errors} 
        end 
    end 

    def destroy
        allUser = User.all
        user = User.find(params[:id])
        user.destroy
        render json: allUser
    end

    private

    def user_params
        # byebug
        params.require(:user).permit( :username, :password, :vaccinated, :img_url, :first_name, :last_name, :age, :hometown)
    end
    
end
