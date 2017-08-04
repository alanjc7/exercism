module BookKeeping
  VERSION = 2
end

module RomanNumerals

ROMAN_MAP = { 1000 => "M",
              900 => "CM",
              500 => "D",
              400 => "CD",
              100 => "C",
              90 => "XC",
              50 => "L",
              40 => "XL",
              10 => "X",
              9 => "IX",
              5 => "V",
              4 => "IV",
              1 => "I"
}

  def to_roman
    str = ""
    current_number = self
    ROMAN_MAP.each do |num, key|
      foo = (current_number / num)
      too_many = foo > 3

      if too_many
        next_bucket, next_key = ROMAN_MAP.reverse_each.detect { |k,v| k > foo }
        str += next_key * (next_bucket - foo)
      else
        str += key * foo
      end
      
      current_number = (current_number % num)
    end
    str
  end

end

class Fixnum
  include RomanNumerals
end