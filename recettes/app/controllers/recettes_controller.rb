class RecettesController < ApplicationController

    #Tommy Landry - derniere modif 4/11/2020
        
    def recette #recette pour /recettes/:id
            @recettes = Recette.find(params[:id])

            respond_to do |format|
                format.html {render 'recettes/recette' }
                format.json {render :json => @recettes.to_json}
                format.xml {render :xml => @recettes.as_json.to_xml}
         
            end
    end

    def recettes #liste des recettes pour /admin/recettes

        @users = User.left_joins(:recettes).where.not(recettes:{id:nil}).distinct

        respond_to do |format|
            format.html {render 'admin/recettes' }
            format.json {render :json => @recettes.to_json}
            format.xml {render xml => @recettes.to_xml}
     
        end
    end

    def recettedetail #recette pour admin/recettes/:id

        @recettes = Recette.find(params[:id])

        respond_to do |format|
            format.html {render 'admin/recettes' }
            format.json {render :json => @recettes.to_json}
            format.xml {render :xml => @recettes.to_xml}
    
        end
    end

end