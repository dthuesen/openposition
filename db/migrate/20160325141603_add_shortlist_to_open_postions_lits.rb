class AddShortlistToOpenPostionsLits < ActiveRecord::Migration[5.0]
  def change
    add_column :open_positions_lists, :shortlist, :string
  end
end
