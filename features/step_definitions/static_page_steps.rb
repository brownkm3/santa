When "Santa is in town" do
  visit root_path
end

Then "he should see the town page" do
  expect(page).to have_content("town")
end

Then "he can check his list" do
  click_on "Santa's List"
end

When "Santa is checking his list" do
  visit children_path
end

And "there are naughty and nice children on the list" do
  Child.create(firstname: 'Bob', good: true)
  Child.create(firstname: 'Sally',good: false)
end

Then "he knows who has been naughty or nice" do
  expect(page).to have_content("Good") 
end
