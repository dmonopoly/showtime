Given /^a genre named Comedy$/ do
  @comedy = Genre.create!(:name => "Comedy") # DMA style
end

When /^I create a movie Caddyshack in the Comedy genre$/ do
  visit movies_path
  click_link "Add Movie"
  fill_in "Title", :with => "Caddyshack"
  select "1980", :from => "Release Year"
  check "Comedy"
  click_button "Save"
end

Then /^Caddyshack should be in the Comedy genre$/ do
  pending # express the regexp above with the code you wish you had
end

