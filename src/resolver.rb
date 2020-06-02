def encode(text)
    cont = 1
    encriptedText = ''
    for i in (0..(text.size))
        if text[i] != text[i + 1]
            encriptedText += "#{cont}#{text[i]}"
            cont = 1
        else
            cont += 1
        end
    end
    return encriptedText
end

def decode(encriptedText)
    upperChars = Array('A'..'Z')
    decriptedText = ''
    someVar = ''
    for i in (0..(encriptedText.size))
        if !upperChars.include?(encriptedText[i])
            someVar += "#{encriptedText[i]}"
        else
            decriptedText += "#{encriptedText[i]}" * someVar.to_i
            someVar = ''
        end
    end
    return decriptedText
end