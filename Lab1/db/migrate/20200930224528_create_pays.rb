#Tommy Landry - 20200930
class CreatePays < ActiveRecord::Migration[6.0]
  def change
    create_table :pays do |t|
      t.string :nom

      t.timestamps
    end
  end
end
