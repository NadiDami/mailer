Given(/^I am on the homepage$/) do
  visit root_path # express the regexp above with the code you wish you had
end

Then(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in(field, with: value)
  
end

Then(/^I press "(.*?)"$/) do |button|
  click_button button
end

Then(/^an email should be sent to "(.*?)"$/) do |email_address|
  open_email email_address

  # raise current_email.inspect
  expect(current_email).not_to be_nil
end

Then(/^the email should contain "(.*?)"$/) do |content|
 expect(current_email.body).to have_content content
end
