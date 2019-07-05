def acronymize(string)
  #Séparer la string en plusieurs mots que l'on stocke dans une array
  #On veut récuperer la première lettre de chaque mot
  #On veut les mettre en majuscule
  #Rassembler les différentes lettres en une string
  words = string.split
  words.map { |word| word[0].capitalize }.join

end

p acronymize("CA VA")
