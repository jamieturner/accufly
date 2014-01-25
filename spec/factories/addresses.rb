# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    first_line "MyString"
    second_line "MyString"
    town_city "MyString"
    county "MyString"
    postcode "MyString"
    country "MyString"
  end
end
