class AddClientToOpenPositionsLists < ActiveRecord::Migration[5.0]
  def change
    add_column :open_positions_lists, :client, :string
  end
end
