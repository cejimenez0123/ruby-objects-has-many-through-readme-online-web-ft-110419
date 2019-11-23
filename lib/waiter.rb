class Waiter
    attr_reader :name, :experience
    @@all = []
  def initialize(name,experience)
    @name = name
    @experience = experience
    @@all << self
  end
  def self.all
    @@all
  end
  def waiter
    @@all[0]
  end
end
