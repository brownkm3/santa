FactoryGirl.define do
  factory :child do |f|
    f.firstname { Faker::Name.first_name }
    f.lastname { Faker::Name.last_name }
  end

  factory :invalid_child, parent: :child do |f|
    f.firstname nil
  end
end
