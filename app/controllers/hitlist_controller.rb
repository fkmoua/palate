class HitlistController < ApplicationController

	def index
	end

	def show
	end

	 def new
        @user = User.find(params[:id])
        @hitlist = @user.hitlist.new
    end

    def create
        @user = User.find(params[:id])
        @hitlist = @user.hitlist.new(params.require(:hitlist).permit(:name, :description))
        @hitlist.save
        redirect_to hitlists_path

    end

	def update
	end

	def delete
	end
end
