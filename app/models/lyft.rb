class Passenger
attr_reader :name
  @@all = []

  def initialize (name)
    @name=name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select{|ride|ride.passenger==self}
  end

  def drivers
    self.rides.map{|ride|ride.driver}
  end

  def total_distance
  array = self.rides.map{|ride|ride.distance}
  array.inject(0, :+)
  end


  def self.premium_members
    self.all.select{|passenger|passenger.total_distance > 100.0}
  end

end


class Driver
attr_reader :driver_name
  @@all = []

  def initialize (driver_name)
    @driver_name=driver_name
    @@all << self
  end

  def self.all
    @@all
  end

  def passengers
    self.rides.map do |ride|
      ride.passenger
    end
  end

  def rides
      Ride.all.select{|ride|ride.driver==self}
  end


  def self.mileage_cap(distance)
     array = Ride.all.select do |ride|
       ride.distance > distance
     end
       array.map do |ride|
        ride.driver
     end
   end

end



class Ride
attr_reader :distance, :passenger, :driver
  @@all = []

  def initialize(distance, passenger, driver)
    @distance=distance
    @passenger=passenger
    @driver=driver
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    total=0
    Ride.all.each do |ride|
    total+= ride.distance
  end
    total/Ride.all.length
  end
end
