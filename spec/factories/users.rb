# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "MyString"
    first_name "MyString"
    last_name "MyString"
    username "MyString"
    locale "MyString"
    image_url "MyString"
    large_image_url "MyString"
    small_image_url "MyString"
    square_image_url "MyString"
    facebook_idx "MyString"
    votes_count 1
  end
end
