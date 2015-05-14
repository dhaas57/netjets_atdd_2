# product_locator.feature

When(/^searching for no selected product criteria$/) do
  # goto_Chads_Web_Site
  @prod_sub = try_to_search_without_any_product_criteria
end

Then(/^The product submit button is not enabled$/) do
  expect(@prod_sub).to be_false
end


When(/^searching on one product criteria$/) do
  #goto_Chads_Web_Site
  @product_list= search_with_one_product_criteria
end

When(/^searching on two product criteria$/) do
  goto_Chads_Web_Site
  @product_list = search_with_two_product_criteria
end

When(/^searching on many product criteria$/) do
  goto_Chads_Web_Site
  search_with_many_product_criteria
end


Then(/^a list of products is displayed based on the search criteria$/) do
  expect(@product_list).not_to  be_empty
  @product_list.each { |x| expect(x.type).to eq 'lawn mower'}


end
#...............................................................................
# contractor_locator.feature


When(/^searching for no selected contractor criteria$/) do
  goto_Chads_Web_Site
  try_to_search_without_any_contractor_criteria
end


def try_to_search_without_any_contractor_criteria
  #TODO need to find a product
  #TODO goto the contractor search screen
  #TODO do not add any search criteria
end

Then(/^The contractor submit button is not enabled$/) do
  expect(able_to_perform_contractor_search?).to be_false
end




When(/^searching on one contractor criteria$/) do
  goto_Chads_Web_Site
  search_with_one_contractor_criteria
end


When(/^searching on two contractor criteria$/) do
   goto_Chads_Web_Site
   search_with_two_contractor_criteria
end

When(/^searching on many contractor criteria$/) do
   goto_Chads_Web_Site
   search_with_many_contractor_criteria
end

def search_with_one_contractor_criteria
  #TODO need a product
  #TODO Open the contractor search page
  #TODO Input one search criteria
  #TODO Select the submit button
end

def search_with_two_contractor_criteria
  #TODO need a product
  #TODO Open the contractor search page
  #TODO Input two search criteria
  #TODO Select the submit button
end

def search_with_many_contractor_criteria
  #TODO need a product
  #TODO Open the contractor search page
  #TODO Input many search criteria
  #TODO Select the submit button
end




Then(/^a list of contractors is displayed based on the search criteria$/) do
  expect(returned_contractor_search?).to be_true
end


#...............................................................................
# store_locator.feature

Given(/^a product is selected$/) do
   goto_Chads_Web_Site
   search_with_one_product_criteria
end

When(/^searching on one store criteria$/) do
  search_with_one_store_criteria
end


When(/^searching on two store criteria$/) do
   search_with_two_store_criteria
end

When(/^searching on many store criteria$/) do
  search_with_many_store_criteria
end

def search_with_one_store_criteria
  #TODO need a product
  #TODO Open the store search page
  #TODO Input one search criteria
  #TODO Select the submit button
end

def search_with_two_store_criteria
  #TODO need a product
  #TODO Open the store search page
  #TODO Input one search criteria
  #TODO Select the submit button
end

def search_with_many_store_criteria
  #TODO need a product
  #TODO Open the store search page
  #TODO Input one search criteria
  #TODO Select the submit button
end



Then(/^a list of stores is displayed based on search criteria$/) do
  expect(returned_store_search?).to be_true
end

#...............................................................................
# customer_review.feature


When(/^A rating is selected$/) do
   goto_Chads_Web_Site
   search_with_one_product_criteria
   try_to_search_without_any_contractor_criteria
end

Then(/^only reviews based on the rating is displayed$/) do
  expect(returned_rating_search?).to be_true
end



When(/^one product is selected$/) do
  goto_Chads_Web_Site
  need a product
  select one product from list
end

Then(/^that product review is displayed$/) do
  expect(returned_rating_search?).to be_true
end