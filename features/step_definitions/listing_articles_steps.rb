Given(/^there is no articles created$/) do
end

Given(/^the articles$/) do |articles|
  articles.hashes.each do |attr|
    Blogger::Articles::Creator.create_article Article, attr
  end
end

When(/^I visit the list articles page$/) do
  visit articles_path
end

Then(/^I should see the message "(.*?)"$/) do |msg|
  expect(page).to have_content(msg)
end

