class Listing
  attr_reader :city

  @@all = []

  def initialize(city)
    # @name=name
    @city=city
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select{|trip|trip.listing==self}
  end

  def guests
    self.trips.map{|trip|trip.guests}
  end

  def trip_count
    self.trips.count
  end


  def self.find_all_by_city(city)
    self.all.select{|listing|listing.city==self}
  end

  def self.most_popular
    list_hash ={}
    Trip.all.each do |trip|
      if list_hash[trip.listing] == nil
        list_hash[trip.listing] = 1
      else
        list_hash[trip.listing] += 1
      end
    end
    print "#{list_hash.values.max}"
    list_hash.key(list_hash.values.max)
  end
end





class Guest
  attr_reader :name

  @@all = []

  def initialize(name)
    @name=name
    @@all << self
  end

  def self.all
    @@all
  end

  def listings
    self.trip.maps {|trip|trip.listings}
  end

  def trips
    self.trip.map{|trip|trip.guest==self}.map
  end

  def trip_count
    self.trips.count
  end

  def self.pro_traveller
    guest_trav_hash = {}
    Trip.all.each do |trip|
      guest_trav_hash[trip.guest]||0
      guest_trav_hash[trip.guest]+=1
    end
    guest_trav_hash.select do |guest, num_trips|
      num_trips >1
    end.keys
  end

  def self.find_all_by_name(name)
    self.all.guest {|guest|guest.name == name}
  end


end




class Trip
  attr_reader :listing, :guest

  @@all = []

  def initialize(guest, listing)
    @guest=guest
    @listing=listing
    @@all << self
  end

  def self.all
    @@all
  end

end
