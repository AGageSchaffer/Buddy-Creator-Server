class Character < ActiveRecord::Base

def self.show_all_stats
  self.all.collect do |i|
    i.show_stat
  end
end

belongs_to :party
belongs_to :stat

def show_stat
  s = self.stat
  overall = s.vigor / 10 + s.attack + s.mana / 5 + s.faith / 5
  {:id => "#{self.id}", 
  :name => "#{self.name}", 
  :overall => "#{overall / 4}", 
  :vigor => "#{self.stat.vigor}", 
  :attack => "#{self.stat.attack}", 
  :mana => "#{self.stat.mana}", 
  :faith => "#{self.stat.faith}",
  :partyId => "#{self.party_id}"
  } 
end

def attach_stat stat
  self.stat = stat
end
end