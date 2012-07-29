When /^I fill in "(.*?)" with "(.*?)"$/ do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end
#
When /^I press "(.*?)"$/ do |arg1|
  click_button(arg1)
end
#
Then /^I should see "(.*?)"$/ do |text|
  page.should have_content(text)
end
#
When /^I click "(.*?)"$/ do |link|
  click_link(link)
end

