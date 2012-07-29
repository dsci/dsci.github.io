Given /^my username is "(.*?)",my password is "(.*?)" and my email is "(.*?)"$/ do |username, pwd,email|
  user = User.new(:username => username,
                  :password => pwd,
                  :password_confirmation => pwd,
                  :email => email)
  expect{user.save!}.to_not raise_error
end

When /^I visit the ritter start page$/ do
  visit("/")
end

Then /^I should see the login form$/ do
  page.should have_css('.login')
  page.should have_content('Login to ritter')
end

Then /^I should see that I'm logged in$/ do
  page.should have_content('Signed in successfully.')
  page.should_not have_content("Login to ritter")
end

Then /^I should see my username "(.*?)" and that I'm logged in$/ do |name|
  steps %Q{
    Then I should see that I'm logged in
  }
  page.should have_content(name)
end

Then /^I should see that I entered something wrong$/ do
  page.should have_content('Invalid email or password.')
end

Then /^I am back at the login page$/ do
  steps %Q{
    Then I should see the login form
  }
end