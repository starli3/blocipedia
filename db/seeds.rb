require 'faker'

3.times do
  w = Wiki.create(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph)
end

puts "Seed finished"
puts "#{Wiki.count} wikis created"