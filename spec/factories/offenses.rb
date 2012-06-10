# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :offense do
    user_id 1
    body "MyString"
    score 1
    won 1
    lost 1
  end
end
