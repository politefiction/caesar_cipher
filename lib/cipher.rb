def encrypt(message, cipher)
  coded_message = []
  arr = message.split("")
  arr.each do |letter|
    letter = letter.ord

    #for uppercase letters:
    if (letter >= 65 && letter <= 90)
      code = letter + cipher
      if code < 65
        x = (90-(64-code))
        coded_message.push(x.chr)
      elsif code > 90
        x = (code-90) + 64
        coded_message.push(x.chr)
      else
        coded_message.push(code.chr)
      end
      
    #for lowercase letters:    
    elsif (letter >= 97 && letter <=122)
      code = letter + cipher
      if code < 97
        x = (122-(96-code))
        coded_message.push(x.chr)
      elsif code > 122
        x = (code-122) + 96
        coded_message.push(x.chr)
      else
        coded_message.push(code.chr)
      end
      
    else
      coded_message.push(letter.chr)
    end
  end
  return coded_message.join()
end
  
