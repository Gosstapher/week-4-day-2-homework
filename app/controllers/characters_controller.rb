class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def create
    Character.create(character_params)
    redirect_to( characters_path )
  end

  def show
    @character = Character.find(params[:id])
  end

  def edit
    
  end






  private
  def character_params
    params.require(:character).permit(:name, :game, :image, :age, :height, :misc_info)
  end

end