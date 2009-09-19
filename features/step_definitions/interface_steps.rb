Then /^I should see a link to "([^\"]*)"$/ do |url|
  response.should have_tag(:a, :href => url)
end
