Given(/^there is no articles created$/) do
end

Given(/^the articles$/) do |table|
  # table is a Cucumber::Ast::Table
  # express the regexp above with the code you wish you had
end

When(/^I visit the list articles page$/) do
  visit articles_path
end

Then(/^I should see the message "(.*?)"$/) do |msg|
  expect(page).to have_content(msg)
end

