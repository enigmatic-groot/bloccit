require 'random_data'

 # Create Posts
 50.times do
 # #1
   Post.create!(
 # #2
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end

 posts = Post.all

 puts "#{Post.count}"
 Post.find_or_create_by(title: "Check out this unique title", body: "Check out this unique body")
 puts "#{Post.count}"

 puts "#{Comment.count}"
 # This below comment uses a unique post I created as its post reference
 Comment.find_or_create_by(post: posts.first, body:"By happenstance, this here is a body of uniqueness.")
 puts "#{Comment.count}"



 Comment.find_or_create_by()


 # Create Comments
 # #3
 100.times do
   Comment.create!(
 # #4
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
