class Listing
  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name=name
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

  def self.find_all_by_city(city)
    self.all.select{|listing|listing.city==self}
  end

  def most_popular
    list_hash ={}
    Trip.each do |trip|
      list_hash[trips.listing] || 0
      list_hash[trips.listing] += 1
    end
    print "#{listing_hash.values.max}"
    listing_hash.key(listing_hash.values.max)
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


end




class Trip
  attr_reader :listing, :guest

  @@all = []

  def initialize(listing, guest)
    @listing=listing
    @guests=guests

    @@all << self
  end

  def self.all
    @@all
  end

end
