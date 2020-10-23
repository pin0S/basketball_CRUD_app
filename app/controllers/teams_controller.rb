class TeamsController < ApplicationController

    def index
        @teams = Team.all
    end

    def show
        @team = Team.find(params[:id])
    end

    private
    
    def team_params
        params.require(:team).permit(:name, :location, :n_players, 
        :stadium, :stadium_cap)
    end

end
