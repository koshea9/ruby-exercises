class TrickOrTreater
  attr_reader :bag

  def initialize(costume)
    @costume = costume
    @bag = Bag.new
    @eaten = []
  end

  def dressed_up_as
    @costume.style
  end

  def empty?
    @bag.empty?
  end

  def has_candy?
    @bag.count > 0
  end

  def candy_count
    @bag.count
  end

  def eat
    @eaten << @bag.candies.pop
  end

  def sugar_level
    @eaten.sum do |candy|
      candy.sugar
    end
  end
  
end
