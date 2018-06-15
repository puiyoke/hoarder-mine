class AddStatusToReportsSuggestions < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :status, :integer, default: 0
    add_column :suggestions, :status, :integer, default: 0
  end
end
