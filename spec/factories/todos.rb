FactoryBot.define do
  factory :todo do
    title "MyString"
    description "MyText"
    finished false
    user "MyString"
    references "MyString"
  end
end
