class OpenPositionsList < ApplicationRecord
    
    validates_length_of :summary, :minimum => 5, :too_short => "Die Beschreibung ist leider zu kurz, bitte mindestens 5 Zeichen verwenden."
    validates_length_of :description, :minimum => 25, :too_short => "Die Beschreibung ist leider zu kurz, bitte mindestens 25 Zeichen verwenden."
    
end
