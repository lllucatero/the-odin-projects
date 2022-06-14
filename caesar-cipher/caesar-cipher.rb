# Implement a caesar cipher that takes in a string 
# and the shift factor and then outputs the modified string

def caesar_cipher(message, shift_factor)
  @upcase = ("A".."Z").to_a
  @downcase = ("a".."z").to_a
  encode = ""
  
  message.chars do |char|
    if @upcase.include? char
      encode += @upcase[ (@upcase.index(char) + shift_factor) % 26 ]
    elsif @downcase.include? char
      encode += @downcase[ (@downcase.index(char) + shift_factor) % 26 ]
    else
      encode += char
    end
  end
  p encode
end

print "Enter the message to encode: "
message = gets.chomp

print "Enter the shift factor: "
shift_factor = gets.chomp.to_i

caesar_cipher(message, shift_factor)