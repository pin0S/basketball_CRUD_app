class PlayersController < ApplicationController

    def new
    end

    def create
        @player = Player.new(params[player_whitelist])

        @player.save
        redirect_to @player
    end

    def show
        @player = Player.find(params[:id])
    end


    private
    
    def player_whitelist
        params.require(:player).permit(:name, :school,
        :height, :weight, :years, :age, :salary, :free_age,
        :position, :team)
    end

end
