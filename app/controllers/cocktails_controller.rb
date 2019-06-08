class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.search(params[:search])
  end

  def show
    @cocktail = Cocktail.find_by(cocktail_id: params[:cocktail_id])
  end
end
