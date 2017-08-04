class Complement
  def self.of_dna(dna)
    rna = ''
    dna_arr = dna.split('')

    dna_arr.each do |letter|
      if letter == 'C'
        rna << 'G'
      elsif letter == 'G'
        rna << 'C'
      elsif letter == 'T'
        rna << 'A'
      elsif letter == 'A'
        rna << 'U'
      else 
        rna = ''
        break
      end
    end
    rna
  end
end

module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end