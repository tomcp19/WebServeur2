class CreateParties < ActiveRecord::Migration[6.0]
  def change
    create_table :parties do |t|
      t.text :data

      t.timestamps
    end
    add_reference :joueurs, :partie, foreign_key: true
    add_reference :parties, :joueur, foreign_key: true
  end
end
