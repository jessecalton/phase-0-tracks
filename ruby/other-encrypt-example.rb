#
#puts decrypt("bcd")


def decrypt(pwd)
    decrypted =""
    letters = "abcdefghijklmnopqrstuvwxyz"
    pwd_counter = 0
    while pwd_counter < pwd.length
        decrypted += letters[letters.index(pwd[pwd_counter]) - 1]       
        pwd_counter += 1
        
    end
    decrypted
end 
puts decrypt("ycd")
