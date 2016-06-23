class OpenPositionsList < ApplicationRecord
    
    validates_length_of :summary, :minimum => 5, :too_short => "Die Beschreibung ist leider zu kurz, bitte mindestens 5 Zeichen verwenden."
    validates_length_of :description, :minimum => 25, :too_short => "Die Beschreibung ist leider zu kurz, bitte mindestens 25 Zeichen verwenden."
    
    scope :client,     -> (client)     { where client: client }
    scope :shortlist,  -> (shortlist)  { where shortlist: shortlist }
    scope :category,   -> (category)   { where category: category }
    scope :updated_at, -> (updated_at) { where updated_at: updated_at }
    scope :costmodel,  -> (costmodel)  { where costmodel: costmodel }
    scope :state,      -> (state)      { where state: state }
    scope :prio,       -> (prio)       { where prio: prio }
    
end
