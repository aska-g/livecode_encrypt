def encrypt(text)
  # check if its an empty string
  if text == ''
    ''
  else
    # make an  array of all letters capitalized
    alphabet = ("A".."Z").to_a

    # capitalize text and convert into an array of characters
    letters = text.upcase.split("")
    encrypted_letters = letters.map do |letter|

      # check if a letter belongs to the alphabet
      if alphabet.include?(letter)
        # if it belong to alphabet we encrpt
        # get the position of the letter in the alphabet
        letter_index = alphabet.index(letter)
        # substract 3 positions and find the correct letter
        letter_index -= 3
        alphabet[letter_index]
      else
        # if it does not belong, keep unchanged
        letter
      end
    end
    # turn array into string and return it
    encrypted_letters.join
  end
end

# could be shortened:
# def encrypt(text)
#   alphabet = ("A".."Z").to_a
#   text.upcase.split("").map do |letter|
#     index = alphabet.index(letter)
#     index.nil? ? letter : alphabet[index - 3]
#   end.join
# end




# ENHANCED METHOD
# which allows for decryption
# and encryption by any number of characters shift

def encrypt(text, permutation_level = -3)
  alphabet = ("A".."Z").to_a
  text.upcase.split("").map do |letter|
    index = alphabet.index(letter)
    index.nil? ? letter : alphabet[(index + permutation_level) % 26]
  end.join
end

def decrypt(text)
  encrypt(text, 3)
end

encrypted_text = "FK ZOVMQLDOXMEV, X ZXBPXO ZFMEBO, XIPL HKLTK XP ZXBPXO'P ZFMEBO, QEB PEFCQ ZFMEBO, ZXBPXO'P ZLAB LO ZXBPXO PEFCQ, FP LKB LC QEB PFJMIBPQ XKA JLPQ TFABIV HKLTK BKZOVMQFLK QBZEKFNRBP. FQ FP X QVMB LC PRYPQFQRQFLK ZFMEBO FK TEFZE BXZE IBQQBO FK QEB MIXFKQBUQ FP OBMIXZBA YV X IBQQBO PLJB CFUBA KRJYBO LC MLPFQFLKP ALTK QEB XIMEXYBQ. CLO BUXJMIB, TFQE X IBCQ PEFCQ LC 3, A TLRIA YB OBMIXZBA YV X, B TLRIA YBZLJB Y, XKA PL LK. QEB JBQELA FP KXJBA XCQBO GRIFRP ZXBPXO, TEL RPBA FQ FK EFP MOFSXQB ZLOOBPMLKABKZB."

puts decrypt(encrypted_text)
