class AddDefaultValueToShortlistAttribute < ActiveRecord::Migration[5.0]
  def change
    def up
      change_column :OpenPositionsLists, :shortlist, :boolean, :default => true
    end
    
    def down
      change_column :OpenPositionsLists, :shortlist, :boolean, :default => nil
    end
  end
end
