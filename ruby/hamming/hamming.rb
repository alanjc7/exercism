class Hamming

def self.compute(strand1, strand2)
  raise ArgumentError, 'Strand lengths do not match' unless strand1.length == strand2.length

  arr1 = strand1.split('')
  arr2 = strand2.split('')

  both = [arr1] + [arr2]
  count = 0
  both[0].each_with_index do |arr1_element, i|
    count += 1 if arr1_element != both[1][i]
  end
  return count
end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end