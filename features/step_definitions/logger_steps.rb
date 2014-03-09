Given(/^I am on the homepage$/) do
  visit root_path
end

Given(/^I have signed up successfully$/) do
  visit root_path
  click_on('Sign up')
  fill_in('user[email]', with: "test@test.com")
  fill_in('user[password]', with: "abcd1234")
  fill_in('user[password_confirmation]', with: "abcd1234")
  click_on('Submit')
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

When(/^I input the wrong credentials$/) do
  fill_in('user[email]', with: "test@test.com")
  fill_in('user[password]', with: "test")
  click_button('Sign in')
end


When(/^I go to the log in count page$/) do
  visit counter_path
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

Then(/^I should still be in the homepage$/) do
  expect(current_path).to eq(root_path)
end

Then(/^I should see "(.*?)"$/) do |message|
  expect(page).to have_content(message)
end

Then(/^I should see the times I have been signed in$/) do
  expect(page).to have_content("test@test.com")
  expect(page).to have_content("1 time")
end

Then(/^I should be in the log in counter$/) do
  expect(current_path).to eq(counter_path)
end

