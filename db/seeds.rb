@user = User.create!(email: "test@test.com", password: "password", password_confirmation: "password", first_name: "Jon", last_name: "Snow") 
puts "1 user created"

AdminUser.create!(email: "admin@email.com", password: "password", password_confirmation: "password", first_name: "Admin", last_name: "User") 
puts "1 admin user created"

50.times do |post| 
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end
puts "50 posts have been created"
