FactoryGirl.define do
  factory :post do
    date Date.today
    work_performed "Some work_performed"
    daily_hours 13.5
    user
  end
  
   factory :second_post, class: "Post" do
    date Date.yesterday
    work_performed "Some more content"
    daily_hours 8.0
    user
  end
  
  
end