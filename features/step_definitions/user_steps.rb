Given "there are some users" do
  User.create!(firstname: 'Bill', lastname: 'Flowerpot',  password: 'secret', password_confirmation: 'secret', giver: true, username: 'Bill')
  User.create!(firstname: 'Ben', lastname: 'Flowerpot', username: 'Ben', password: 'secret', password_confirmation: 'secret', giver: false)
  User.create!(firstname: 'Little', lastname: 'Weed', username: 'Weed', password: 'secret', password_confirmation: 'secret', giver: true)
end

Given "that Santa is real" do
  User.create!(firstname: 'Santa', lastname: 'Claus', username: 'Santa', password: 'secret', password_confirmation: 'secret', giver: true, santa: true)
end

When "I go to the users page" do
  visit users_path
end

Then "I should see the users" do
  expect(page).to have_content('Bill') && have_content('Ben') && have_content('Weed')
end

And "I fill in the new user form" do
  click_on('New User')
  fill_in('Firstname',         with: 'Barney')
  fill_in('Lastname',        with: 'Rubble')
  fill_in('Username',        with: 'Barney')
  fill_in('Password',     with: 'secret')
  fill_in('Password confirmation', with: 'secret')
  click_on('Create User')
end

Then "I should see the new user is created" do
  expect(page).to have_content('User was successfully created.')
  expect(User.find_by(username: 'barney')).to be_truthy
end

And "I edit an existing user" do
  user = User.find_by(username: 'bill')
  click_link("edit_#{user.id}")
  fill_in('Lastname',        with: 'Wibble')
  click_on('Update User')
end

Then "I should see the user has been updated" do
  expect(page).to have_content('User was successfully updated.')
  expect(User.find_by(username: 'bill').lastname).to eq('Wibble')
end

And "I delete an existing user" do
  user = User.find_by(username: 'ben')
  click_link("edit_#{user.id}")
end

Then "I should see the user has been deleted" do
  expect(page).to have_content('User was successfully deleted.')
  expect(User.find_by(username: 'ben')).to be_nil
end

And "I try and delete Santa" do
  user = User.find_by(username: 'santa')
  click_link("edit_#{user.id}")
end

Then "I should see this is not allowed" do
  expect(page).to have_content('If you delete Santa there will be no presents')
  expect(User.find_by(username: 'santa')).to be_nil
end
