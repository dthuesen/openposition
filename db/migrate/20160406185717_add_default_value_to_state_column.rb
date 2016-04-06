class AddDefaultValueToStateColumn < ActiveRecord::Migration[5.0]
  def change
      change_column :open_positions_lists, :state, :string, default: 'NEW'
  end
end
