require 'page-object'

class SouthwestHome

  include PageObject

  page_url ('southwest.com')

  text_field(:departure_airport, :id => 'air-city-departure')
  text_field(:arrival_airport, :id => 'air-city-arrival')

  list_item(:error_msg, :class => 'menu--item  not-selectable')
  #list_item(name, identifier = {:index => 0}, &block) ⇒ Object (also: #li)
  # list_item(:item_one, :id => 'one')
       # will generate 'item_one', 'item_one_element', and 'item_one?' methods

  button(:search, :id => 'jb-booking-form-submit-button')

end