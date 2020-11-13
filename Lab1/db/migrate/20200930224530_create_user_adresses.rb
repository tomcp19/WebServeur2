#Tommy Landry - 20200930
class CreateUserAdresses < ActiveRecord::Migration[6.0]
  def change
    create_table :user_adresses do |t|

      t.timestamps
    end
    
    add_reference :user_adresses, :user, foreign_key: true, null: false #de user(primaire) vers user_adresse(foreign)
    add_reference :user_adresses, :adresse, foreign_key: true, null: false #de adresses(primaire) vers user_adresse(foreign)

  end
end
