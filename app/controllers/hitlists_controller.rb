class HitlistsController < ApplicationController

	def index
		@user = User.find(params[:user_id])
		@hitlists = @user.hitlists
	end

	def show
	end

	 def new
        @user = User.find(params[:user_id])
        @hitlist = @user.hitlists.new
    end

    def create
        @user = User.find(params[:user_id])
        @hitlist = @user.hitlists.new(params.require(:hitlist).permit(:name, :description))
        @hitlist.save
        redirect_to user_hitlists_path

    end

	def update
	end

	def delete
	end
end
