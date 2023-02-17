puts "Resetting field"
Character.destroy_all
Party.destroy_all
Stat.destroy_all

puts "Managing Parties..."

the_chosen = Party.create(name: "The Chosen")
the_damned = Party.create(name: "The Damned")

puts "Generating Stats..."

20.times do
    Stat.create(
        vigor: rand(100..200),
        attack: rand(10..20),
        mana: rand(50..100),
        faith: rand(50..100)
    )
end 

puts "Creating Characters..."

flateartharr = ["Austin Schaffer", "Ben Murchie", "Walker Le", "Caleigh Steill", "Jensen Miers", "Matt Ishida", "Jaz Singh", "Lantz Warrick", "Topher Ludlow", "Sam Chappel", "Rebecca Wollard", "Ja'Vonn Williams", "Colm Traci"]

flateartharr.each_with_index do |f, index|
Character.create(
    name: "#{f}",
    role: "Flatearth",
    stat: Stat.all[index]
)
end

Character.create(
    name: "Sean",
    role: "Flatearth",
    stat: Stat.all[-1]
)


puts "Party creation successful"