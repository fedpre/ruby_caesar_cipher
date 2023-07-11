# Path: ruby_ceasar_cypher\ruby_caesar_cypher.rb

def caesar_cypher(text, offset)
  text_array = text.split("")
  new_text_array = text_array.map do |letter|
    letter = letter.ord
    if letter >= 65 && letter <= 90
      letter = letter + offset
      if letter > 90
        letter = letter - 26
      end
    elsif letter >= 97 && letter <= 122
      letter = letter + offset
      if letter > 122
        letter = letter - 26
      end
    end
    letter = letter.chr
  end
  cipher_text = new_text_array.join("")
  puts cipher_text
end

caesar_cypher("What a string!", 5)

