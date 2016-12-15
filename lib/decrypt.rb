class Decrypt
DICTIONARY = (' '..'z').to_a

  def decipher(rotation, dictionary = DICTIONARY)
    rotated_dictionary = dictionary.rotate(rotation)
    combined_dictionary = dictionary.zip(rotated_dictionary)
    combined_dictionary.to_h
  end

  def decrypt_letter(letter, rotation)
    decipher_for_rotation = decipher(rotation)
    decipher_for_rotation[letter]
  end

  def decrypt_word(string, rotation)
    letters = string.split("")
    results = []
    letters.each do |letter|
    decrypted_letter = decrypt_letter(letter, rotation)
    results = results.push(decrypted_letter)
  end
    results.join
  end
end