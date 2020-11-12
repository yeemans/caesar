
def cipher(text, offset) 
    ascii = []
    i = 0
    while i < text.length do
      if text[i].ord >= "a"[0].ord && text[i].ord <= "z"[0].ord ||
      text[i].ord >= "A"[0].ord && text[i].ord <= "Z"[0].ord 
        ascii.push(text[i].ord + offset)
        # for lowercase letters
        ascii[i] -= 26 if text[i].ord + offset > "z"[0].ord 
        # for uppercase letters
        ascii[i] -= 26 if text[i].ord + offset > "Z"[0].ord && 
        text[i].ord + offset < "a"[0].ord
        ascii[i] = ascii[i].chr
      else 
        ascii.push(text[i])
      end
      i += 1
    end
    ascii = ascii.join("")
    puts(ascii)
end


cipher("HELLO",13)
cipher("hELLO", 1)
cipher("Hello world", 3)
cipher("Be sure to drink your Ovaltine", 13)