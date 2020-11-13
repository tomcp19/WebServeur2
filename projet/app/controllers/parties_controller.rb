class PartiesController < ActionController

def index

    @parties = Parties #renvoie les parties a la page si presentes


    render: json => @parties
end

def show
    #byebug

    #chercher mes parties

    #chercher la partie dans mes parties
    @parties = Partie.find params[:id]

    render :json => parties #renvoie la bonne partie
end

def valid_params
    
end

end