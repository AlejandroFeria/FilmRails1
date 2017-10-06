class CreateFilmms < ActiveRecord::Migration
  def change
    create_table :filmms do |t|
      t.string :tittle
      t.string :year
      t.integer :raiting
      t.text :description
      t.string :cover

      t.timestamps null: false
    end
  end
end
