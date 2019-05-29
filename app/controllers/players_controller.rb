class PlayersController < ApplicationController

	def index
		@players = Player.all.order("created_at DESC")
	end

	def new
		@player = Player.new
	end

	def create
		@player = Player.create(player_params)
		if @player.invalid?
			render :new, status: :unprocessable_entity
		else
			redirect_to root_path
		end
	end

	private

	def player_params
		params.require(:player).permit(:name, :team, :moment)
	end

end
