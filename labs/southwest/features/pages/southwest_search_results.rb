require 'page-object'

class SouthwestSearchResults
  include PageObject

text_field(:departure, :id => 'originAirport_displayed')
text_field(:arrival, :id => 'destinationAirport_displayed')


  def flights
   # TODO Need to find flights numbers in table
   [1234]
  end

end