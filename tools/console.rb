require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
#######################
# Test cases for Lyft
#######################
# p1 = Passenger.new("Passenger 1")
# p2 = Passenger.new("Passener 2")
# p3 = Passenger.new("Passenger 3")
#
# d1=Driver.new("Driver 1")
# d2=Driver.new("Driver 2")
# d3=Driver.new("Driver 3")
#
# r1=Ride.new(50.0, p1, d1)
# r2=Ride.new(150.0, p2, d2)
# r3=Ride.new(250.0, p3, d3)
# r4=Ride.new(50.0, p1, d3)
# r5=Ride.new(150.0, p2, d1)
# r6=Ride.new(250.0, p3, d2)

#######################
# Test cases for AirBnB
#######################
g1 = Guest.new("Jen")
g2 = Guest.new("Jack")

l1 = Listing.new("SEA")
l2 = Listing.new("PDX")
l3 = Listing.new("SFO")

t1 = Trip.new(g1, l1)
t2 = Trip.new(g1, l2)
t3 = Trip.new(g2, l1)
t4 = Trip.new(g2, l3)

binding.pry
0
