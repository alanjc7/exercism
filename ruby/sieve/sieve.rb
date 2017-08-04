require 'prime'

module BookKeeping
  VERSION = 1
end

class Sieve

  def initialize(limit)
    @series = (2..limit).to_a
  end

  def primes
    @series.select { |number| Prime.prime?(number) }
  end
end