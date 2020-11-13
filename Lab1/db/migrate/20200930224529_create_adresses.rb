#Tommy Landry - 20200930
class CreateAdresses < ActiveRecord::Migration[6.0]
  def change
    create_table :adresses do |t|
      t.integer :numero
      t.string :rue
      t.string :ville
      t.string :province

      t.timestamps
    end
    add_reference :adresses, :pays, foreign_key: true, null: false #de pays(primaire) vers adresses(foreign)
  end
end
