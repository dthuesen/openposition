class OpenPositionsList < ApplicationRecord
    
    # validates_length_of :summary, :minimum => 5, :too_short => "Die Beschreibung ist leider zu kurz, bitte mindestens 5 Zeichen verwenden."
    # validates_length_of :description, :minimum => 25, :too_short => "Die Beschreibung ist leider zu kurz, bitte mindestens 25 Zeichen verwenden."
    
    scope :client,     -> (client)     { where client: client }
    scope :shortlist,  -> (shortlist)  { where shortlist: shortlist }
    scope :category,   -> (category)   { where category: category }
    scope :updated_at, -> (updated_at) { where updated_at: updated_at }
    scope :costmodel,  -> (costmodel)  { where costmodel: costmodel }
    scope :state,      -> (state)      { where state: state }
    scope :prio,       -> (prio)       { where prio: prio }
    
    def self.to_csv(options = {})
      CSV.generate(options) do |csv|
        csv << column_names
        all.each do |opl|
          csv << opl.attributes.values
        end
      end
    end
    
    def self.to_xls(options = {})
      CSV.generate(options) do |xls|
        xls << column_names
        all.each do |opl|
          xls << opl.attributes.values
        end
      end
    end
    
    def self.import(file)
      spreadsheet = Roo::Spreadsheet.open(file.path)
      spreadsheet.default_sheet = spreadsheet.sheets.first
      header = spreadsheet.row(3)
      (4..spreadsheet.last_row).each do |i|
        row = Hash[[header, spreadsheet.row(i)].transpose]
        open_positions_lists = find_by(id: row["id"]) || new
        open_positions_lists.attributes = row.to_hash
        open_positions_lists.save!
      end
    end
    
    # def self.import(file)
    #   spreadsheet = Roo::Spreadsheet.open(file.path)
    #   header = spreadsheet.row(1)
    #   (2..spreadsheet.last_row).each do |i|
    #     row = Hash[[header, spreadsheet.row(i)].transpose]
    #     open_positions_lists = find_by(id: row["id"]) || new
    #     open_positions_lists.attributes = row.to_hash
    #     open_positions_lists.save!
    #   end
    # end 
    
end
