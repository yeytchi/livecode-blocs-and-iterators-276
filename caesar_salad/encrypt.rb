#stocker l'alphabet dans un tableau
#recuper les lettres de la chaîne de caractères
#trouver l'index de chaque lettre dans l'alphabet
#definir un nouvel index = -3
#recuper la nouvelle lettre correspondante dans l'aplphabet
#stocker cette lettre dans un nouveau tableau
#joindre les éléments du tableau
#upcase


def encrypt(text)
  alphabet = ("A".."Z").to_a
  new_text = text.split("").map do |letter|
    if alphabet.include?(letter.upcase)
       position = alphabet.index(letter.upcase) - 3
       alphabet[position]
    else
      letter
    end
  end
  new_text.join
end

p encrypt('je fais un livecode')

