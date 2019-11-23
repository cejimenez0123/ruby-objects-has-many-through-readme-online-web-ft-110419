require "pry"
class Customer
attr_reader :name, :age
attr_accessor :meals
  @@all = []
  def initialize(name,age)
    @name = name
    @age = age
    @@all << self
  end
  def self.all
    @@all
  end
  def new_meal(waiter,total,tip)
  self =  Meal.new(waiter,self,total,tip)
  end
  def meals
    customer_meals = Meal.all.find_all {|meal| meal.customer == self}
  end
  def waiters
    customer_waiters = Meal.all.find_all{ |meal|
    meal.waiter == self.meal.waiter
    binding.pry
  return meal.waiter}

    customer_waiters
    end

end
