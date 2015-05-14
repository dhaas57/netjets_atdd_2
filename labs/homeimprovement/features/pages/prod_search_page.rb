require 'page-object'

class ProdSearchPage
  include PageObject



  button(:search, id: 'adv_srch_sbm')
  text_field(:type, id: 'type_ipt')
  text_field(:manuf, id: 'manuf_ipt')
  text_field(:price, id: 'price_ipt')
  text_field(:rating, id: 'rating_ipt')
  text_field(:engystr, id: 'energy_ipt')



end