When "I go to town" do
  visit root_path
end

Then "I should see the town page" do
  expect(page).to have_content("town")
end
