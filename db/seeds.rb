@user = User.create!(email: "test@test.com", 
                    password: "password",
                    password_confirmation: "password",
                    first_name: "Jon",
                    last_name: "Snow", 
                    phone: "602-432-8593") 
puts "1 user created"

AdminUser.create!(email: "admin@email.com",
                  password: "password", 
                  password_confirmation: "password", 
                  first_name: "Admin", 
                  last_name: "User",
                  phone: "602-432-8593") 
puts "1 admin user created"

50.times do |post| 
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end
puts "50 posts have been created"
