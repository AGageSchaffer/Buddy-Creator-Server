puts "Resetting field"
Character.destroy_all
Party.destroy_all
Stat.destroy_all

puts "Managing Parties..."

the_chosen = Party.create(name: "The Chosen")
the_damned = Party.create(name: "The Damned")

puts "Generating Stats..."

10.times do
    Stat.create(
        vigor: rand(100..200),
        attack: rand(10..20),
        mana: rand(50..100),
        faith: rand(50..100)
    )
end 

puts "Creating Characters..."

5.times do 
    Character.create(
        name: Faker::Name.name,
        party: Party.all.sample,
        stat: Stat.all.sample
    )
end


puts "Party creation successful"