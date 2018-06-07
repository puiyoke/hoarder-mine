class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.timestamps null: false
      t.string :image
      t.string :name
      t.string :release_country
      t.integer :release_year
    end
  end
end
