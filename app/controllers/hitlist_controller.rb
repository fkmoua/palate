class HitlistController < ApplicationController

	def index
	end

	def show
	end

	def new
		@hitlist = Hitlist.all
	end

	def create
        @hitlist = Hitlist.new(params.require(:hitlist).permit(:name, :description))
	end

	def update
	end

	def delete
	end
end
