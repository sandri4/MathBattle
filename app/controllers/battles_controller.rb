class BattlesController < ApplicationController
  def index
    @battles = Battle.all
  end

  def create
    @battle = Battle.create(battle_params)
    @first_player_name = Player.create(name: battle_params[:first_player_name])
    @second_player_name = Player.create(name: battle_params[:second_player_name])
    render 'show'
  end

  def show
    @battle = Battle.find(params[:id])
    @task, @resuls = @battle.math_task
  end

  def new
    @battle = Battle.new
  end

  def update; end

  private

  def battle_params
    params.require(:battle).permit(:first_player_name, :second_player_name)
  end
end
