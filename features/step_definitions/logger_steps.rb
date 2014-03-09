Given(/^I am on the homepage$/) do
  visit root_path
end

When(/^I click "(.*?)"$/) do |link|
 click_link(link)
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
