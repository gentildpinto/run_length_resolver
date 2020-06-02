def encode(text)
    cont = 1
    encriptedText = ''
    for i in (0..(text.size))
        if text[i] != text[i + 1]
            if cont.eql?(1)
                encriptedText += "#{text[i]}"
            else
                encriptedText += "#{cont}#{text[i]}"
            end
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
            if (someVar.to_i).eql?(0) 
                decriptedText += "#{encriptedText[i]}"
            else
                decriptedText += "#{encriptedText[i]}" * someVar.to_i
            end
            someVar = ''
        end
    end
    return decriptedText
end