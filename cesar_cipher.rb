def cesar_cipher_right(text, shift)
  alphabet_hash = {
    "down": ('a'..'z').to_a,
    "upper": ('A'..'Z').to_a
  }
  ciphered_text = ''

  text.each_char do |char|
    # Encontre a posição da letra no alfabeto
    key = :down if char == char.downcase
    key ||= :upper

    # Encontre a posição da letra no alfabeto
    index = alphabet_hash[key].index(char)
    # Se a letra for uma letra maiúscula
    if index
      # Calcule a posição da letra substituta
      new_index = (index + shift) % alphabet_hash[key].size

      # Adicione a letra substituta ao texto criptografado
      ciphered_text << alphabet_hash[key][new_index]
    else
      # Se não for uma letra maiúscula, adicione o caractere original
      ciphered_text << char
    end
  end

  ciphered_text
end

puts cesar_cipher_right('Banana!', 3)

def cesar_cipher_left(text, shift)
  alphabet_hash = {
    "down": ('a'..'z').to_a,
    "upper": ('A'..'Z').to_a
  }
  ciphered_text = ''

  text.each_char do |char|
    # Encontre a posição da letra no alfabeto
    key = :down if char == char.downcase
    key ||= :upper

    # Encontre a posição da letra no alfabeto
    index = alphabet_hash[key].index(char)
    # Se a letra for uma letra maiúscula
    if index
      # Calcule a posição da letra substituta
      new_index = (index - shift) % alphabet_hash[key].size
      puts new_index

      # Adicione a letra substituta ao texto criptografado
      ciphered_text << alphabet_hash[key][new_index]
    else
      # Se não for uma letra maiúscula, adicione o caractere original
      ciphered_text << char
    end
  end

  ciphered_text
end

puts cesar_cipher_left('Banana!', 3)
