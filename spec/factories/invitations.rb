# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :invitation do
    user_id 1
    request_id "MyString"
    guest_id "MyString"
    accepted_at "2012-06-03 22:17:05"
  end
end
