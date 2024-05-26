# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

# caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"

def cipher_char(char, shift_factor, lowercase_alphabet, uppercase_alphabet)
  if lowercase_alphabet.include?(char)
    cipher_char_index = (lowercase_alphabet.index(char) + shift_factor) % 26
    lowercase_alphabet[cipher_char_index]
  elsif uppercase_alphabet.include?(char)
    cipher_char_index = (uppercase_alphabet.index(char) + shift_factor) % 26
    uppercase_alphabet[cipher_char_index]
  else
    char
  end
end

def caesar_cipher(text, shift_factor)
  lowercase_alphabet = ('A'..'Z').to_a
  uppercase_alphabet = ('a'..'z').to_a
  text.chars.map { |char| cipher_char(char, shift_factor, lowercase_alphabet, uppercase_alphabet) }.join
end

puts caesar_cipher('What a string!', 5)
