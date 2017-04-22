@user = User.create!(email: "test@test.com", 
                    password: "password",
                    password_confirmation: "password",
                    first_name: "Jon",
                    last_name: "Snow", 
                    phone: "5555555555") 
puts "1 user created"

AdminUser.create!(email: "admin@email.com",
                  password: "password", 
                  password_confirmation: "password", 
                  first_name: "Admin", 
                  last_name: "User",
                  phone: "5555555555") 
puts "1 admin user created"

30.times do |post| 
  Post.create!(date: Date.today, rationale: "#{post} rationale content In ut lectus vel elit egestas accumsan in nec leo. Maecenas auctor turpis ut velit dictum molestie. Mauris in blandit neque. Fusce non nisi quis sapien pulvinar posuere in ut dolor. Nullam ultrices, diam a feugiat congue, quam nibh dictum tellus, eget cursus tortor enim eget nulla. Donec placerat est augue, ut accumsan diam imperdiet vel. Phasellus ac interdum elit, vel malesuada velit. Suspendisse rhoncus lacus erat, pretium viverra magna interdum at. Aliquam auctor lacus ut sem maximus, vitae ullamcorper ante finibus. Vivamus eget urna eu risus mattis imperdiet sit amet quis urna.", user_id: @user.id, overtime_request: 2.5)
end
puts "30 posts have been created"

 
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days)) 
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))

puts "3 audit logs have been created"

