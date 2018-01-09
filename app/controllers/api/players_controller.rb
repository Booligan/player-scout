class Api::PlayersController < ApplicationController
    before_action :set_player, only: :[:show, :edit, :destroy]

    def index
        render json: Player.all
    end

    def create
        player = Player.new(player_params)
        if player.save
            render json: player
        else
            render json: {message: player.errors}, status: 400
        end
    end

    def show
        render json: @player
    end

    def update
        
    end

    private

    def set_player
        @player = Player.find_by(id: params[:id])
    end

    def player_params
        params.require(:player).permit(:first_name, 
                                       :last_name,
                                       :born,
                                       :height,
                                       :weight,
                                       :position,
                                       :nat_team,
                                       :club_team,
                                       :img_url
                                      )
    end
end