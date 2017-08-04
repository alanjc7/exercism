module BookKeeping
  VERSION = 4
end

class Pangram

  def self.pangram?(phrase)
    result = ('a'..'z').all? { |word| phrase.downcase.include? (word) }
    puts "Expected true, got: #{result.inspect}. #{phrase.inspect} IS a pangram" if result == true
    puts "Expected false, got: #{result.inspect}. #{phrase.inspect} is NOT a pangram" if result == false
    return result
  end

end