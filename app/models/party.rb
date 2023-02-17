class Party < ActiveRecord::Base
    has_many :characters
    has_many :stats, through: :characters

    def flatearth
        
        if (self.name == "Flatearth Society")
            flatearthers = Character.all.select {|char| char.role == 'Flatearth'}
            flatearthers.each {|char| char.update(party_id: self.id) }
        end
    end

end