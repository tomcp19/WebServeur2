class User < ApplicationRecord
    #nom, prenom, telephone ne peut pas etre null -> géré dans migration
    #telephone doit etre de 10 caracteres
    has_many :user_adresses, dependent: :destroy
    has_many :adresses, :through => :user_adresses

    validates :nom, presence:{message:"Nom obligatoire"}
    validates :prenom, presence:{message:"Prenom obligatoire"}
    validates :telephone, presence:{message:"No de telephone obligatoire"}, numericality: {:message => "etre doit uniquement des chiffres"} , length: { maximum: 10, too_long: "%{count} chiffres est le maximum alloué" }
    validates :email, uniqueness:{message:"Ce courriel existe déja. Refaire avec un courriel unique"}
    validate :need_adresse

    def need_adresse
        if self.adresses.empty?
            errors.add(:user, "Un user doit avoir au moins 1 adresse")
        end
    end
    
end
