Given(/^I am on the homepage$/) do
  visit root_path
end

When(/^I click "(.*?)"$/) do |link|
 click_on(link)
end

When(/^I fill in the sign up form$/) do
  fill_in('user[email]', with: "test@test.com")
  fill_in('user[password]', with: "abcd1234")
  fill_in('user[password_confirmation]', with: "abcd1234")
end


When(/^I fill in the sign up form without a password$/) do
  fill_in('user[email]', with: "test@test.com")
end


Then(/^I should see a link to the sign in page$/) do
  expect(page).to have_link('Sign in')
end

Then(/^I should see a link to the sign up form$/) do
  expect(page).to have_link('Sign up')
end

Then(/^the form should appear on the home page$/) do
  expect(current_path).to eq(root_path)
  expect(page).to have_content("Sign up to Logger")
end

Then(/^I should see "(.*?)"$/) do |message|
  expect(page).to have_content(message)
end


