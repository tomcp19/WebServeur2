class CreateJoueurs < ActiveRecord::Migration[6.0]
  def change
    create_table :joueurs do |t|
      t.string :email
      t.string :password
      t.string :nom
      t.string :prenom

      t.timestamps
    end
  end
end
