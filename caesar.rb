
def cipher(text, offset) 
    ascii = []
    i = 0
    while i < text.length do
        if text[i].ord >= "a"[0].ord && text[i].ord <= "z"[0].ord ||
        text[i].ord >= "A"[0].ord && text[i].ord <= "Z"[0].ord 
            ascii.push(text[i].ord + offset)
            #for lowercase letters
            if text[i].ord + offset > "z"[0].ord 
                ascii[i] -= 26
            end
            #for uppercase letters
            if text[i].ord + offset > "Z"[0].ord && text[i].ord + offset < "a"[0].ord
                ascii[i] -= 26
            end

            ascii[i] = ascii[i].chr
        
        else 
            ascii.push(text[i])
        end
        i = i + 1
    end
    ascii = ascii.join("")
    puts(ascii)
end


cipher("HELLO",13)
cipher("hELLO", 1)
cipher("world", 13)
cipher("Be sure to drink your Ovaltine", 13)