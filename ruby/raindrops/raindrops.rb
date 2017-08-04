class Raindrops

  def self.convert(integer)
    sound = ''
    sound += 'Pling' if integer % 3 == 0
    sound += 'Plang' if integer % 5 == 0
    sound += 'Plong' if integer % 7 == 0
    return sound if sound != ''
    return integer.to_s if sound == ''
  end

end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end