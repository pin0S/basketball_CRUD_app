class PlayersController < ApplicationController

    def index
        @players = Player.all
    end

    def new
    end

    def edit
        @player = Player.find(params[:id])
    end

    def create
        @player = Player.new(params[player_whitelist])
        
        if @player.save
            redirect_to @player
        else
            render 'new'
        end
    end

    def update
        @player = Article.find(params[:id])

        if @player.update(player_whitelist)
            redirect_to @player
        else
            render 'edit'
        end
    end
    
    def show
        @player = Player.find(params[:id])
    end



    private
    
    def player_whitelist
        params.require(:player).permit(:name, :school,
        :height, :weight, :years, :age, :salary, :free_agent,
        :position, :team)
    end

end
