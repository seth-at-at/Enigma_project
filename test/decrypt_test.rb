require 'minitest/autorun'
require 'minitest/pride'
require './lib/decrypt.rb'

class DecryptTest < MiniTest::Test

  def test_it_can_decrypt_word
    decrypting = Decrypt.new
    decrypted_word = decrypting.decrypt_word(">69+", -125)

    assert_equal "word", decrypted_word
  end

  def test_can_decrypt_letter
    decrypt = Decrypt.new
    decrypted_string = decrypt.decrypt_letter("$", -15)
    assert_equal "p", decrypted_string
  end
end