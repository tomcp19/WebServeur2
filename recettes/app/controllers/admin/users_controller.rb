class Admin::UsersController < AdminController  
#Tommy Landry - derniere modif 4/11/2020
    def index
        #<% if isAdmin %>
        render html: "Page Admin"
        #<% end >

    end

    def recettes
    
        @users = User.left_joins(:recettes).where.not(recettes:{id:nil}).distinct
        @recettes = Recette.all.order(:titre)
        @auteur = User.find(1).fullname

        respond_to do |format|
            format.html {render 'admin/recettes' }
            format.json {render :json => @recettes.to_json}
            format.xml {render :xml => @recettes.as_json.to_xml}
     
        end
end

def recettedetail
    @recettes = Recette.find(params[:id])
    @auteur = User.find(Recette.find(params[:id]).user_id).fullname

    respond_to do |format|
        format.html {render 'admin/recette' }
        format.json {render :json => @recettes.to_json}
        format.xml {render :xml => @recettes.as_json.to_xml}
 
    end
end

    
end