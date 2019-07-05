def encrypt(text, permutation_level = -3)
  alphabet = ("A".."Z").to_a
  text.split("").map do |letter|
    if alphabet.include?(letter.upcase)
      position = (alphabet.index(letter.upcase) + permutation_level) % 26
      alphabet[position]
    else
      letter
    end
  end.join
end

def decrypt(text, permutation_level = -3)
  p encrypt(text, -permutation_level)
end

decrypt("FK ZOVMQLDOXMEV, X ZXBPXO ZFMEBO, XIPL HKLTK XP ZXBPXO'P ZFMEBO, QEB PEFCQ ZFMEBO, ZXBPXO'P ZLAB LO ZXBPXO PEFCQ, FP LKB LC QEB PFJMIBPQ XKA JLPQ TFABIV HKLTK BKZOVMQFLK QBZEKFNRBP. FQ FP X QVMB LC PRYPQFQRQFLK ZFMEBO FK TEFZE BXZE IBQQBO FK QEB MIXFKQBUQ FP OBMIXZBA YV X IBQQBO PLJB CFUBA KRJYBO LC MLPFQFLKP ALTK QEB XIMEXYBQ. CLO BUXJMIB, TFQE X IBCQ PEFCQ LC 3, A TLRIA YB OBMIXZBA YV X, B TLRIA YBZLJB Y, XKA PL LK. QEB JBQELA FP KXJBA XCQBO GRIFRP ZXBPXO, TEL RPBA FQ FK EFP MOFSXQB ZLOOBPMLKABKZB"
)

