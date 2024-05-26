

def caeser_cipher(word, key)
    string = ""
    word.bytes do |byte|
       is_lower = byte >= 97 && byte <= 122
       is_upper = byte >= 65 && byte <= 90
       newb = is_lower || is_upper ? byte + key : byte
       newb = 64 + (newb - 90) if is_upper && newb > 90
       newb = 96 + (newb - 122) if is_lower && newb > 122
       string << newb.chr
    end
    puts string
end

caeser_cipher("What a string!", 5)
# C
# C