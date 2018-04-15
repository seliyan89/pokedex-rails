class PokemonsController < ApplicationController
  def index
  	@pokemons = Pokemon.all
  end

  def show
  	@pokemon = Pokemon.find(params[:id])
  end

  def new
  end

  def create

  	@pokemon = Pokemon.new(pokemon_create)
  	@pokemon.save
  	redirect_to '/'
  end

  def edit
  	@pokemon = Pokemon.find(params[:id])
  end

  def destroy
  	@pokemon = Pokemon.find(params[:id])
  	@pokemon.destroy
  	redirect_to '/'
  end

  private

  def pokemon_create
  	params.require(:pokemon).permit(:num, :name, :height, :weight)
  end

end
