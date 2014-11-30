    Given "I am on the home page" do
      visit root_path
    end

    Then "I can create a new user" do
      click_on 'New User'
      expect(current_path).to eq(new_user_path)
      fill_in('Firstname', :with => 'John')
      fill_in('Lastname', :with => 'Smith')
      fill_in('Role', :with => '0')
      click_button 'Create User'
    end

    Then "I can see the new user details" do
      expect(page).to have_content 'John Smith'
    end
 
