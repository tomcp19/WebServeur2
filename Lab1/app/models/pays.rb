class Pays < ApplicationRecord
    #le nom doit etre unique
    has_many :adresses
    validates :nom, uniqueness:{message:"Chaque nom de pays doit être unique"}

end
