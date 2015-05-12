require 'locale'
require 'test/unit'

When(/^I access Wikipedia for my language$/) do
  @browser.goto "http://wikipedia.com"
  language = Locale.current.language
  @browser.link(:xpath => "//div[@lang='#{language}']/a[1]").click
end

Then /^I am shown a summary of a featured article on the dashboard$/ do
  assert @browser.span(:id => "From_today.27s_featured_article").exists?
end

Then /^I can access the Wikinews from the dashboard$/ do
  todays_full_article = @browser.link(:xpath => "//div[@id='mp-tfa']//a/b/..")
  assert todays_full_article.exists?
  todays_full_article.click

  assert @browser.div(:xpath => "//div[@id='mw-content-text']/div[@class='noarticletext']").exists? == false
end

Then(/^I am shown summaries of several recent news items on the dashboard$/) do
  assert @browser.span(:id => "In_the_news").exists?
  assert @browser.lis(:xpath => "//div[@id='mp-itn']/ul/li").length > 0
end

And(/^I am shown names of (\d+) recently deceased individuals on the dashboard$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

And /^I can access Wikinews from the dashboard$/ do
  pending
end

Then /^I am shown an ordered timeline of historical events for the current date on the dashboard$/ do
  pending
end

Then /^I can access more historical events for (.*) from the dashboard$/ do |day|
  pending
end

