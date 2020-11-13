class AccueilController < ApplicationController
#Tommy Landry - derniere modif 4/11/2020
    def presentation

        @recettes = Recette.all.order(:titre)
        
    end 

end