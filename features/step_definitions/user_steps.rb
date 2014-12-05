Given "there are some users" do
  User.create!(firstname: 'Bill', lastname: 'Flowerpot', password: 'secret', password_confirmation: 'secret', giver: true)
  User.create!(firstname: 'Ben', lastname: 'Flowerpot', password: 'secret', password_confirmation: 'secret', giver: false)
  User.create!(firstname: 'Little', lastname: 'Weed', password: 'secret', password_confirmation: 'secret', giver: true, santa: true)
end
When "I go to the users page" do

end
Then "I should see the users" do

end
And "I fill in the new user form" do

end
Then "I should see the new user is created" do

end
And "I edit an existing user" do

end
Then "I should see the user has been updated" do

end
Given "I am logged in as an admin" do

end
And "I delete an existing user" do

end
Then "I should see the user has been deleted" do

end
And "I try and delete myself" do

end
Then "I should see this is not allowed" do

end

