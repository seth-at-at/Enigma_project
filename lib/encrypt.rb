class Encrypt
  DICTIONARY = (' '..'z').to_a

  def cipher(rotation, dictionary = DICTIONARY)
    rotated_dictionary = dictionary.rotate(rotation)
    combined_dictionary = dictionary.zip(rotated_dictionary)
    combined_dictionary.to_h
  end

  def encrypt_letter(letter, rotation)
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation[letter]
  end

  def encrypt_letters(string, rotation)
    letters = string.split("")
    results = []
    letters.each do |letter|
      encrypted_letter = encrypt_letter(letter, rotation)
      results = results.push(encrypted_letter)
      end
      results.join
  end
end