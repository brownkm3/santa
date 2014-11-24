FactoryGirl.define do
  factory :child do |f|
    f.firstname { Faker::Name.first_name }
    f.lastname { Faker::Name.last_name }
    f.good true
  end

end
