Given /^a podcast named "([^\"]*)" at "([^\"]*)"$/ do |name, url|
  Podcast.create(:name => name, :url => url)
end
