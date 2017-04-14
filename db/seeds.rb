50.times do |post| 
  Post.create!(date: Date.today, rationale: "#{post} rationale content")
end
puts "50 posts have been created"
