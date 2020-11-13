class ExempleController < ApplicationController
layout false
    before_action :get_parties, only: [:index_3, :index_4, :index_5, :index_6] #only sexecute seulement pour le 3 et 4, except: [:index_3, :index_4] fait linverse
    #before_action :get_parties, except: [:index_1, :index_2]

    def index_1


        @parties = Partie.all
        @parties.first.joueurs #pour debuggage

       # @joueurs = @parties.collect do |p|
          #  p.information
        #end

           @joueurs = @parties.collect {|p| p.information } 

           # @joueurs = @parties.map(&:information) #aurait pu faire ca aussi
        

        render html: @joueurs.to_s
    end

    def index_2
        @parties = Partie.all
        @joueurs = @parties.map(&:joueurs)
        #@joueurs = @parties.collect {|p| p.joueurs } 
        #byebug #fait un stop a cette ligne pour lire l'objet ctril d pour continuer

        render json: @joueurs

    end

    def index_3
        #@parties = Partie.all #ou get_parties()
        #@joueurs = @parties.map(&:joueurs).as_json

        @joueurs = Partie.all.map(&:joueurs).as_json #remplace les 2 ligne en haut. plus efficace

        #@joueurs = @parties.collect {|p| p.joueurs } 
        #byebug #fait un stop a cette ligne pour lire l'objet ctrl d pour continuer

        render xml: @joueurs

    end

    def index_4
   #pu besoin d'Appeller parties a cause du before et fonction get-parties
        @joueurs = @parties.map(&:joueurs)
        #@joueurs = @parties.collect {|p| p.joueurs } 
        #byebug #fait un stop a cette ligne pour lire l'objet ctril d pour continuer

        #render json: @joueurs

        respond_to do |format|
            format.html {render 'exemple/index_6' }
            format.json {render :json => @joueurs.to_json}
            format.xml {render :xml => @joueurs.to_xml}
     
        end

    end

    def index_5
        #@joueurs = Partie.all.map(&:joueurs).as_json
        @joueurs = Joueur.sort_by(&:nom)

        respond_to do |format|
            format.html {render :html => @joueurs.to_s }
            format.json {render :json => @joueurs.to_json}
            format.xml {render :xml => @joueurs.to_xml}
     
         end
    end

    def index_6
            #@joueurs = Partie.all.map(&:joueurs).as_json
           # @joueurs = Partie.order(nom, :desc).all.as_json
           #@joueurs = Partie.order(:id, desc).all.map(&:joueurs).as_json
          @joueurs = Joueur.sort_by(:id, :desc)

            respond_to do |format|
                format.html {render 'exemple/index_6' }
                format.json {render :json => @joueurs.to_json}
                format.xml {render :xml => @joueurs.to_xml}
         
            end
    end
            
        def show_1
                @partie = Partie.find(params[:id])
                @joueurs = {joueur_1: @partie.joueur_1, joueur_2: @partie.joueur_2}.as_json
                
                respond_to do |format|
                    format.html {render :html => @joueurs.to_s }
                    format.json {render :json => @joueurs.to_json}
                    format.xml {render :xml => @joueurs.to_xml}
                end
        end
        

    private
    def get_parties
        @parties = Partie.all
    end

end