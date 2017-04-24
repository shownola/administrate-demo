namespace :notification do
  desc "Sends SMS notification to employees asking them to log their overtime"
  task sms: :environment do
    if Time.now.sunday?
      employees = Employee.all
      notification_message = "Please log into the overtime management dashboard to request overtime or confirm your hours: https://shownola-administrate-demo.herokuapp.com"
  # Schedule to run at Sunday at 5pm
  # Iterate over all employees
  # Skip AdminUsers
  # Send a message that has instructions and a link to log time
  
      employees.all.each do |employee|
        AuditLog.create!(user_id: employee.id)
        SmsTool.send_sms(number: employee.phone, message: notification_message)
      end
    end
  end

    
  
  desc "Sends email notification to managers (admin users) each day to inform of pending overtime requests"
  task manager_email: :environment do
    # 1. Iterate over the list of pending overtime requests
    # 2. Check to see if there are any requests
    # 3. Iterate over the lsit of admin users/managers
    # 4. Send the email to each admin
    submitted_posts = Post.submitted
    admin_users = AdminUser.all
    
    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_later
      end
    end
  end


end
