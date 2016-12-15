require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt.rb'
require 'pry'

class EncryptTest < MiniTest::Test

  def test_it_can_encrypt_word
    e = Encrypt.new
    encrypted_word = e.encrypt_letters("word", 125)
    assert_equal ">69+", encrypted_word
  end

  def test_can_encrypt_letter
    encrypt = Encrypt.new
    encrypted_string = encrypt.encrypt_letter("w", 125)
    assert_equal ">", encrypted_string
  end
end
