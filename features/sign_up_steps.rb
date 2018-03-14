When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should see the signup link$/) do
  expect(page).to have_link("Sign Up")
end

Given(/^I am on the home page$/) do
  visit root_path 
end

When(/^I click the signup link$/) do
  click_link 'Sign Up'
end

Given(/^I am on the signup page$/) do
  visit signup_path
end

Then(/^I should go to the signup page$/) do
  expect(page).to have_content('New Organization')
end
