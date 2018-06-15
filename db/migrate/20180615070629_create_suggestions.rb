class CreateSuggestions < ActiveRecord::Migration[5.2]
  def change
    create_table :suggestions do |t|
      t.timestamps null: false
      t.belongs_to :user, index: true
      t.string :image
      t.string :name
      t.string :release_country
      t.integer :release_year
      t.string :details
      t.string :review, default: "pending"
    end
  end
end
