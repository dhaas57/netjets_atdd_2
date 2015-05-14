require 'page-object'

include PageObject::PageFactory

module HomeImprovementInteractions


  def goto_Chads_Web_Site
    visit(ChadsHomePage)
  end


  def try_to_search_without_any_product_criteria
    on(ChadsHomePage).advanced_search
    return on(ProdSearchPage).search_element.eneabled?
  end



  #...........................................


  def search_with_one_product_criteria
    on(ChadsHomePage).advanced_search

    on(ProdSearchPage) do |page|
      page.type = 'lawn mower'
      page.search
    end
    x = on(ChadsHomePage).prod_list

  end




  def search_with_two_product_criteria
    on(ChadsHomePage).advanced_search

    man
    on(ProdSearchPage) do |page|
      page.type = 'lawn mower'
      page.manufacturer = 'Toro'
      page.search
    end
    x = on(ChadsHomePage).prod_list
  end

  def search_with_many_product_criteria
    #TODO Open the product search page
    #TODO Input one search criteria
    #TODO Select the submit button
  end





#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>




end

World(HomeImprovementInteractions)