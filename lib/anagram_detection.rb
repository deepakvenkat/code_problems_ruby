class AnagramDetection
  def self.hashed_value input
    alphabets_hash = {'a'=> 2,
                  'b'=> 3,
                  'c'=> 5,
                  'd'=> 7,
                  'e'=> 11,
                  'f'=> 13,
                  'g'=> 17,
                  'h'=> 19,
                  'i'=> 23,
                  'j'=> 29,
                  'k'=> 31,
                  'l'=> 37,
                  'm'=> 41,
                  'n'=> 43,
                  'o'=> 47,
                  'p'=> 53,
                  'q'=> 59,
                  'r'=> 61,
                  's'=> 67,
                  't'=> 71,
                  'u'=> 73,
                  'v'=> 79,
                  'w'=> 83,
                  'x'=> 89,
                  'y'=> 97,
                  'z'=> 101,
                  'A'=> 103,
                  'B'=> 107,
                  'C'=> 109,
                  'D'=> 113,
                  'E'=> 127,
                  'F'=> 131,
                  'G'=> 137,
                  'H'=> 139,
                  'I'=> 149,
                  'J'=> 151,
                  'K'=> 163,
                  'L'=> 167,
                  'M'=> 173,
                  'N'=> 179,
                  'O'=> 181,
                  'P'=> 191,
                  'Q'=> 193,
                  'R'=> 197,
                  'S'=> 199,
                  'T'=> 211,
                  'U'=> 223,
                  'V'=> 227,
                  'W'=> 229,
                  'X'=> 233,
                  'Y'=> 239,
                  'Z'=> 241 }

    input.split(//).inject(1) {|result, alphabet| result = result * alphabets_hash[alphabet]}
  end

  def self.anagrams parent, child
    child_weight = hashed_value(child)
    child_length = child.length
    parent_length = parent.length
    anagrams_list = []
    parent.split(//).each_index do |index|
      sub_string = parent[index..index + (child_length - 1)]
      anagrams_list << sub_string if hashed_value(sub_string) == child_weight
    end
    return anagrams_list
  end
end