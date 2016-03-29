class CreateOpenPositionsLists < ActiveRecord::Migration[5.0]
  def change
    create_table :open_positions_lists do |t|
      t.integer :number
      t.text :summary
      t.text :description
      t.text :option
      t.string :component
      t.string :category
      t.string :prio
      t.string :responsible
      t.string :state
      t.string :costmodel
      t.string :affects_version
      t.string :issue_ticket
      t.text :ticket_text
      t.text :notes
      t.string :in_sprint

      t.timestamps
    end
  end
end
