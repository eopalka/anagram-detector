# Your code goes here!
class Anagram
      def initialize(word)
        @word = word
      end
  
      def match(candidates)
        matching_letters = letters(@word)
        anagrams = candidates.select do |candidate|
          letters(candidate) == matching_letters
        end
        anagrams - [@word]
      end

      def letters(word)
        word.to_s.downcase.chars.sort
      end
      private :letters
  end