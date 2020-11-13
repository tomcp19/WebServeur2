class Admin::UsersController < AdminController  

    def index
        @partie = Partie.find(params[:id])
        @joueurs = {joueur_1: @partie.joueur_1, joueur_2: @partie.joueur_}.as_json
        
        respond_to do |format|
            format.html {render :html => @joueurs.to_s }
            format.json {render :json => @joueurs.to_json}
            format.xml {render :xml => @joueurs.to_xml}
        end
    end

    
end