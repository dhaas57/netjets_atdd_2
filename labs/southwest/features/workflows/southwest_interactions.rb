require 'page-object'

include PageObject::PageFactory

module SouthwestInteractions

  def search_for_flights_between_valid_airports

    departure = 'CMH'
    arrival = 'MCO'
    on(SouthwestHome) do |page|
      page.departure_airport = departure
      page.arrival_airport = arrival
      page.search
    end
    [departure, arrival]
  end

def search_for_flights_between_same_airport
  departure = 'CMH'
  on(SouthwestHome) do |page|
    page.departure_airport = departure
    page.arrival_airport = departure
  end
  [departure, departure]

end

  def goto_southwest_app
    visit SouthwestHome
  end


  def search_results
    on(SouthwestSearchResults).flights
  end


  def search_results_departure_airport
    on(SouthwestSearchResults).departure
  end


  def search_results_arrival_airport
    on(SouthwestSearchResults).arrival
  end

  def departure_error_message
    on(SouthwestHome).error_msg
  end

end

  World(SouthwestInteractions)