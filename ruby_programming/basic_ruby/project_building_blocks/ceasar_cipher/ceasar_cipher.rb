def ceasar_cipher(str, factor)
  alphabet, alphabet_capital= ("a".."z").to_a, ("A".."Z").to_a

  str.chars.map do |c|
    case c
    when /[a-z]/
      shift(alphabet, factor, c)
    when /[A-Z]/
      shift(alphabet_capital, factor, c)
    else
      c
    end
  end.join
end

def shift(alphabet, factor, character)
  alphabet.rotate(factor).at(alphabet.index(character))
end