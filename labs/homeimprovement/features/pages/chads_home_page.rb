require 'page-object'

class ChadsHomePage
  include PageObject


  page_url ('www.chads-home-improvement.com')

  button(:advanced_search, :id => 'adv_srch_sel')
  unordered_list(:prod_results, id: 'list_queue')


end