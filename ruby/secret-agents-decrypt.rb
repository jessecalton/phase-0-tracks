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
puts decrypt("bcd")



#### pwd_counter  = 0
#loop 1: a,
#loop 2: a break

#pwd_counter =  1
#loop 1: b
#loop 2: a, b

#if it is a, then do letters[letter_counter - 1]
 
#outside loop
#  go through each individual letter of pwd. a, b, c
#  inside loop
#  go through each individual letter in alphabet. a, b, c, d, e, f, g, h, i,
# decrypted += letters[letter_counter - 1]

