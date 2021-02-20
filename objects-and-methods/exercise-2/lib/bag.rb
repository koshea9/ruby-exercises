class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    @candies.empty?
  end

  def count
    @candies.count
  end

  def <<(candy)
    @candies << candy
  end

  def contains?(type)
    @candies.any? do |candy|
      candy.type == type
    end
  end

  def grab(type)
    candy_grab = @candies.find do |candy|
      candy.type == type
      candies.pop
    end
  end

  def take(amount)
    candy_taken = @candies.shift(amount)
  end
end
