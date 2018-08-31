require "byebug"
class MaxIntSet
  def initialize(max)
    @max = max
    @stores = Array.new(max, false) 
  end

  def insert(num)
    raise "Out of bounds" if num < 0 || num > @max
    @stores[num] = true
  end

  def remove(num)
    @stores[num] = false
  end

  def include?(num)
    @stores[num]
  end

  private

  def is_valid?(num)
    
  end

  def validate!(num)
    
  end
end


class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @num_buckets = num_buckets
  end

  def insert(num)
    # debugger
    self[num] << num
  end

  def remove(num)
    self[num].pop
  end

  def include?(num)
    self[num].include?(num)
  end

  private

  def [](num)
    @store[num % num_buckets] # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
  end
end