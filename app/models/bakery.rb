# class Bakery
#   attr_reader :name
# @@all = []
#
# def initialize(name)
#   @name=name
#   @@all << self
# end
#   def self.all
#     @@all
#   end
#
#   def ingredients
#     Desserts.all.select{|ingredients|ingredients.bakery==self}
#   end
#
#   def desserts
#     self.ingredients.map{|ingredient|ingredient.dessert}
#
#   end
#
#   def average_calories
#     total=0
#     self.all.each do |bakery|
#       total += bakery.calories
#     end
#     total.self.all.trip_count
#   end
#
#
#   def shopping_list
#     Bakery.ingredients
#
#   end
#
#
# end
#
#
#
# class Desserts
#   attr_reader :name , :bakery
#   @@all = []
#
#   def initialize(name, bakery)
#     @name=name
#     @bakery=bakery
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
#
#   def ingredients
#     Ingredient.all.select{|ingredient|ingredient.desserts == self}
#   end
#
#   def calories
#     self.ingredients.map{|ingredient|ingredient.calories}
#   end
#
#
# end
#
#
#
# class Ingredients
#   attr_reader :dessert, :bakery
#   @@all = []
#
#   def initialize(dessert, bakery)
#     @dessert=dessert
#     @bakery=bakery
#     @@all << self
#   end
#
#
#   def self.all
#     @@all
#   end
#
#   def self. find_all_by_name(ingredient)
#
#   end
#
# end
