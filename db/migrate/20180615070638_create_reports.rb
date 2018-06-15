class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.timestamps null: false
      t.belongs_to :user, index: true
      t.belongs_to :card, index: true
      t.string :image
      t.string :details
      t.string :review, default: "pending"
    end
  end
end
