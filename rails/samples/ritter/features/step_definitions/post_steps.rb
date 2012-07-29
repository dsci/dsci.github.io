When /^I see the post form$/ do
  page.should have_css('.post')
  page.should have_selector('.post')
end

Then /^I should see "(.*?)" on my timeline$/ do |arg1|
  page.should have_selector('div .posts')
  page.should have_selector('ul')
  page.should have_content(arg1)
end

When /^I add another post "(.*?)", I should see "(.*?)"$/ do |text,count|
  steps = %Q{
    When I fill in "Write Post" with "#{text}"
    And I press "Ritterize that
    Then I should see "#{count}"
  }
end

Then /^the following posts exist:$/ do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |row|
    user = User.create(:username => row[:author], 
                :email => "#{row[:author]}@web.de",
                :password => "1234567",
                :password_confirmation => "1234567")
    post = Post.new(:text => row[:text], :author => user)
    post.save!
  end
end

When /^I click at the star below "(.*?)"$/ do |arg1|
  post = Post.find_by_text(arg1)
  find("#fave_post_#{post.id}").click_link("Fave")
  page.should have_content "You have 1 favourites."  
  #p page.driver.console_messages
end

Then /^I should see that I have "(.*?)" favourite$/ do |arg1|
  page.should have_content "You have #{arg1} favourites."
end

When /^I click at the star below "(.*?)", then I should see that I have "(.*?)" favourites$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end