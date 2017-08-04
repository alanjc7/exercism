class Gigasecond

  def self.from(birth_date)
    i = 1000000000
    gigasecond = birth_date + i
  end

end

module BookKeeping
  VERSION = 6 # Where the version number matches the one in the test.
end