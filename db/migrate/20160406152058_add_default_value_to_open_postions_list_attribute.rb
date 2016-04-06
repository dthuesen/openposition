class AddDefaultValueToOpenPostionsListAttribute < ActiveRecord::Migration[5.0]
  def change
      change_column :open_positions_lists, :issue_ticket, :string, default: 'SC-'
  end
end

