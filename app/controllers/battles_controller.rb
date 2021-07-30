class BattlesController < ApplicationController
  def index
    @battles = Battle.all
  end

  def create
    @battle = Battle.create(battle_params)

    redirect_to @battle
  end

  def show
    @battle = Battle.find(params[:id])
    @left_player = @battle.players.first
    @right_player = @battle.players.last
  end

  def new
    @battle = Battle.new
    @battle.players.build
    @battle.players.build
  end

  def update; end

  private

  def battle_params
    params.require(:battle).permit(players_attributes: [:name])
  end
end
