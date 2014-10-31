Given(/^The web application runs on Heroku$/) do
  # TODO: implement later
  # pending # express the regexp above with the code you wish you had
end

When(/^I open the application url$/) do
  visit root_path
end

Then(/^I must see the front page with application title "(.*?)"$/) do |title|
  current_path.should be == root_path
  expect(page).to have_title title
end

When(/^I click "(.*?)"$/) do |link_text|
  click_link link_text
end

Then(/^I must see the page with title "(.*?)"$/) do |title|
  expect(page).to have_title title
end

Then(/^I must be able to enter the following values:$/) do |table|
  table.raw.each do |row|
    normalized = row[0].downcase.gsub(' ', '_')
    form_field = "stock[#{normalized}]"
    fill_in form_field, with: row[1]
  end
end

Then(/^I press button "(.*?)"$/) do |button_text|
  click_button button_text
end

Then(/^I must see the original input data:$/) do |table|
  table_rows = find('table#stock-data').all('tr')
  rendered_table = table_rows.map { |r| r.all('tr,td').map { |c| c.text.strip } }
  table.diff!(rendered_table)
end

Then(/^list of stock values for each year:$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Then(/^the stock growth is shown as a visual graph$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the stock data must be saved into the database for later review$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^the system has already calculated stocks$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Then(/^I must see a table of saved stocks:$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

When(/^I click on the calculated line "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I must see the already calculated data$/) do
  pending # express the regexp above with the code you wish you had
end
