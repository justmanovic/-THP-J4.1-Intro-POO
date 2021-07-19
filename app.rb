require_relative 'lib/user'
require_relative 'lib/event'



# jack = User.new("jack@twitter.com", 43)

rdv5 = Event.new("2010-10-31 12:00","60","RDV important", ["David","Jonathan"])
rdv6 = Event.new("2021-07-19 11:20","60","RDV important", ["David","Jonathan"])

# puts rdv5.postpone_24h
# puts rdv5.end_date
# puts rdv5.is_past?
# puts rdv5.is_futur?

puts rdv6


