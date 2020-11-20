class DosesController < ApplicationController

    before_action :doseparams, only: [:create]


    def new
      @cocktail = Cocktail.find(params[:cocktail_id])
      @dose = Dose.new
      @ingredients = Ingredient.all
    end
  
    def create
      @dose = Dose.create(doseparams)
      @cocktail = Cocktail.find(params[:cocktail_id])
      @dose.cocktail = @cocktail
      @ingredients = Ingredient.all
      if @dose.save
        redirect_to @cocktail, notice: "Dose saved"
      else
        render :new
      end
    end

    def destroy
        @doses = Cocktail.find(params[:id])
        @doses.destroy
        redirect_to cocktails_path
      end

    def :delete

    def doseparams
        params.require(:dose).permit(:description, :ingredient)
    end

    def listingredients
        @ingredients = Ingredient.all
    end

end
