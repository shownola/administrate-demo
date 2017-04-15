@user = User.create!(email: "test@test.com", password: "password", password_confirmation: "password", first_name: "Jon", last_name: "Snow") 
puts "1 user created"

50.times do |post| 
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end
puts "50 posts have been created"
