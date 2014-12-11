def login_as(user)
  visit sessions_new_path
  within('#login_form') do
    fill_in('Email',    with: "#{user}@example.com")
    fill_in('Password', with: 'secret')
    click_on('Log in')
  end
end

Given 'I am logged in' do
  login_as('bill')
end

Given 'I am logged in as Santa' do
  login_as('santa')
end

When "the user goes to the login page" do
  visit sessions_new_path
end

And "they complete the login form" do
  fill_in('Username',     with: 'Bill')
  fill_in('Password',     with: 'secret')
  click_on('Login')
end

Then "they should see they are logged in" do
  expect(page).to have_content('Hello Bill')
  expect(page).to have_content('Log out')
end

When "I log out" do

end

Then "I should see the user is logged out" do

end


