class AdminController < ApplicationController 

    before_action :authenticate_user!

    #before_action :is_admin?

    private

    def is_admin?
        #unless current_user.email != "quizibo@hotmail.co"
        if !(current_user.email != "quizibo@hotmail.co") #ne devrait pas le hardcoder
        #unless params[:is_admin] && params[:is_admin] == "oui"
           # render html: "NOT AUTORIZED"
           redirect_to new_user_session_url
        end
    end

end