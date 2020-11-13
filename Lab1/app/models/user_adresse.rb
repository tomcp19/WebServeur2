class UserAdresse < ApplicationRecord
    belongs_to :user
    belongs_to :adresse
end
