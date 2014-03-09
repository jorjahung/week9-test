Given(/^I am on the homepage$/) do
  visit root_path
end

Then(/^I should see a link to the sign in page$/) do
  expect(page).to have_link('Sign in')
end

Then(/^I should see a link to the sign up form$/) do
  expect(page).to have_link('Sign up')
end
