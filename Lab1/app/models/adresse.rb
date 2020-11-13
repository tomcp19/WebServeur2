class Adresse < ApplicationRecord
    #doit avoir un pays, un seul pays
    #has_one :pays
    belongs_to :pays

    has_many :user_adresses
    has_many :users, :through => :user_adresses

    validates :numero,  presence:{message:"Une adresse complète doit être présente. Il manque le no de porte"}
    validates :rue,  presence:{message:"Une adresse complète doit être présente. Il manque la rue"}
    validates :ville,  presence:{message:"Une adresse complète doit être présente. Il manque la ville"}
    validates :province,  presence:{message:"Une adresse complète doit être présente. Il manque la province"}
    validates :pays,  presence:{message:"Doit avoir un pays"}
    #validates :must_have_pays

end
