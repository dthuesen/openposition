class RemoveColumnFromOpenPositionsLists < ActiveRecord::Migration[5.0]
  def change
    remove_column :open_positions_lists, :shortlist, :string
  end
end
