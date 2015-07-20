require 'faker'

#create Posts
50.times do
  Post.create!(
    title:  Faker::Lorem.sentence,
    body:   Faker::Lorem.paragraph
    )
end
posts = Post.all

#Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: Faker::Lorem.paragraph
    )
end

#Create Advertisements
5.times do
  Advertisement.create!(
    title: Faker::Company.name,
    copy: Faker::Lorem.sentence,
    price: Faker::Number.number(2)
  )
end


puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"