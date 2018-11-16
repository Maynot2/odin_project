require 'minitest/autorun'
require_relative 'ceasar_cipher'

class CeasarCipherTest < Minitest::Test 
  def test_ceasar_cypher_encodes_letter_d_to_g_with_factor_3
    assert_equal "g", ceasar_cipher("d", 3)
  end

  def test_ceasar_cypher_encodes_letter_l_to_o_with_factor_3
    assert_equal "o", ceasar_cipher("l", 3)
  end

  def test_ceasar_cypher_encodes_letter_l_to_q_with_factor_5
    assert_equal "q", ceasar_cipher("l", 5)
  end

  def test_ceasar_cypher_encodes_letter_z_to_a_with_factor_1
    assert_equal "a", ceasar_cipher("z", 1)
  end

  def test_ceasar_cypher_encodes_letter_y_to_b_with_factor_3
    assert_equal "b", ceasar_cipher("y", 3)
  end

  def test_ceasar_cypher_encodes_letter_z_to_a_with_factor_27
    assert_equal "a", ceasar_cipher("z", 27)
  end

  def test_ceasar_cypher_encodes_letter_z_to_a_with_factor_79
    assert_equal "a", ceasar_cipher("z", 79)
  end

  def test_ceasar_cypher_encodes_letter_e_to_b_with_factor_107
    assert_equal "e", ceasar_cipher("b", 107)
  end

  def test_ceasar_cypher_encodes_the_string_dog_to_grj_with_factor_3
    assert_equal "grj", ceasar_cipher("dog", 3)
  end

  def test_ceasar_cypher_encodes_the_string_the_dog_to_wkh_grj_with_factor_3
    assert_equal "wkh grj", ceasar_cipher("the dog", 3)
  end

  def test_ceasar_cypher_encodes_the_string_the_dog_to_wkh_grj_with_factor_3
    assert_equal "wkh grj", ceasar_cipher("the dog", 3)
  end

  def test_ceasar_cypher_encodes_the_string_What_a_string_to_Bmfy_f_xywnsl_with_factor_5
    assert_equal "Bmfy f xywnsl!", ceasar_cipher("What a string!", 5)
  end
end