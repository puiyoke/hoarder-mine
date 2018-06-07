class CreateOwnerships < ActiveRecord::Migration[5.2]
  def change
    create_table :ownerships do |t|
      t.belongs_to :user, index: true
      t.belongs_to :card, index: true
      t.integer :status
    end
  end
end
