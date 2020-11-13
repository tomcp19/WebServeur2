#Tommy Landry - 20200930
class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :nom
      t.string :prenom
      t.string :telephone

      t.timestamps
    end
  end
end
