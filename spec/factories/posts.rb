FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "Some Rationale"
    daily_hours 13.5
    user
  end
  
   factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "Some more content"
    daily_hours 8.0
    user
  end
  
  
end