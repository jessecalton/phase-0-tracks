# Encrypt
#def encrypt(pwd)
 # encrypted = ""
 # index = 0
  #while index < pwd.length
   # encrypted += pwd[index].next
    #index += 1
  #end
  #encrypted
#end
# puts encrypt("password")


# Decrypt
def decrypt(pwd)
decrypted = ""
letters = "abcdefghijklmnopqrstuvwxyz"
pwd_counter = 0
# p letters.index(pwd)
while pwd_counter < pwd.length
  letter_counter = 0
  while letter_counter < letters.length
    if pwd[pwd_counter] == letters[letter_counter]
      decrypted += letters[letter_counter - 1]
     end
  # p pwd[index]
   letter_counter += 1
   end
  pwd_counter += 1
end
decrypted
end
# puts decrypt("bcd")

# Edge Case
def encrypt(pwd)
encrypted = ""
letters = "abcdefghijklmnopqrstuvwxyz"
pwd_counter = 0
while pwd_counter < pwd.length
  letter_counter = 0
  while letter_counter < letters.length
    if pwd[pwd_counter] == letters[letter_counter]
      encrypted += letters[letter_counter - 25]
     end
  # p pwd[index]
   letter_counter += 1
   end
  pwd_counter += 1
end
encrypted
end
# puts encrypt("zed")

## Nested Method

# decrypt(encrypt("swordfish"))

# Decrypting the encrypted variable is going to do nothing to the variable.
# It's going to leave it as is. It's like remixing a remix, it goes back to normal.

# Our Driver Code
# Ask if the secret agent if they would like to encrypt or decrypt their password.
puts "Would you like to encrypt or decrypt your password?"
answer = gets.chomp
# Ask user for password
puts "What would you like password to be?"
password = gets.chomp

if answer == "encrypt"
  puts encrypt(password)
elsif answer == "decrypt"
  puts decrypt(password)
else
  puts "You did not put encrypt or decrypt. Program exiting."
end



