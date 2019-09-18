# When done, submit this entire file to the autograder.

# Part 1

def sum array
  array.inject 0, :+
end

def max_2_sum array
  sum array.sort.last 2
end

def sum_to_n? (array, n)
    array.combination(2).any? { |x , y| x + y == n }
end

# Part 2

def hello(name)
    'Hello, ' + name
end

# ^ = start there,/ / is a pattern, $ matches end line
# * match thing in front zero or infanit times


def starts_with_consonant? s
  /^[bcdfghjklmnpqrstvwxyz]/i.match(s) != nil
end

def binary_multiple_of_4? s
  /^[10]*00$/.match(s) || /^0$/.match(s) != nil
end

# Part 3

class BookInStock
  attr_accessor :price
  attr_accessor :isbn

  def initialize(isbn, price)
    raise ArgumentError, "You done messed up" if price <= 0 || isbn.empty?
    @price = price
    @isbn = isbn
  end

  def price_as_string
    sprintf("$%2.2f", @price)
  end

end
