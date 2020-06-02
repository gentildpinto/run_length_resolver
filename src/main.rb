require_relative 'resolver'

while true
    puts "1 to encode text"
    puts "2 to decode text"
    puts "other to exit"
    print "=> "
    code = gets.chomp
    if code.eql?("1")
        print "Type the text to encode => "
        txt = gets.chomp
        puts "result => #{encode(txt)}"
    elsif code.eql?("2")
        print "Type the text to decode => "
        txt = gets.chomp
        puts "result => #{decode(txt)}"
    else
        break
    end
    puts
end