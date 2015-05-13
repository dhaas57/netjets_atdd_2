# product_locator.feature

When(/^searching for no selected product criteria$/) do
   goto Chads Web Site
   donot select any search criteria
end

Then(/^The product submit button is not enabled$/) do
  i need to make sure the submit button isnot enabled
end


When(/^searching on one product criteria$/) do
  goto Chads Web Site
  open the advanced search screen
  select one search criteria from list of choices
  select the submit button
end

When(/^searching on two product criteria$/) do
  goto Chads Web Site
  open the advanced search screen
  select two search criteria from list of choices
  select the submit button
end



When(/^searching on many product criteria$/) do
  goto Chads Web Site
  open the advanced search screen
  select many of the search criteria from list of choices
  select the product submit button
end

Then(/^a list of products is displayed based on the search criteria$/) do
    a list of products is displayed
end

#...............................................................................
# contractor_locator.feature


When(/^searching for no selected contractor criteria$/) do
  goto Chads Web Site
  open the contractor search page
  donot select any contractor criteria
end

Then(/^The contractor submit button is not enabled$/) do
  make sure contractor submit button isnot enabled
end

When(/^searching on one contractor criteria$/) do
  goto Chads Web Site
  open the contractor search page
  select one contractor criteria
  select the contractor submit button
end


When(/^searching on two contractor criteria$/) do
   goto Chads Web Site
   open the contractor search page
   select two contractor criteria
   select the contractor submit buttonn
end

When(/^searching on many contractor criteria$/) do
   goto Chads Web Site
   open the contractor search page
   select many contractor criteria
   select the contractor submit button
end

Then(/^a list of contractors is displayed based on the search criteria$/) do
   make sure contractor data is returned
end


#...............................................................................
# store_locator.feature

Given(/^a product is selected$/) do
   goto Chads Web Site
   need to search   select a product
end

When(/^searching on one store criteria$/) do
   select a product from the queue
   select the store button on that product
   select one store search criteria
   select the store submit button
end


When(/^searching on two store criteria$/) do
   select a product from the queue
   select the store button on that product
   select two store criteria
   select the store submit button
end

When(/^searching on many store criteria$/) do
   select a product from the queue
   select the store button on that product
   select two store criteria
   select the store submit button
end

Then(/^a list of stores is displayed based on search criteria$/) do
  make sure a list of stores is listed
end

#...............................................................................
# customer_review.feature


When(/^A rating is selected$/) do
   goto Chads Web Site
   need a product
   select a rating on a product
end

Then(/^only reviews based on the rating is displayed$/) do
   did a list of reviews display
end



When(/^one product is selected$/) do
  goto Chads Web Site
  need a product
  select one product from list
end

Then(/^that product review is displayed$/) do
  make sure a product review is listed
end