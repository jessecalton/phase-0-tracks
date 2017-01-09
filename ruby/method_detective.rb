# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
=> “InVeStIgAtIoN”

"zom".gsub "o", "oo"
=> “zoom”

"enhance".center(15)
=> "    enhance    "

"Stop! You’re under arrest!".upcase
=> "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(-1, ' suspects')
=> "the usual suspects"

a = "the usual"
a << " suspects"
=> "the usual suspects"

a = " suspects"
a.prepend("the usual")
=> "the usual suspects"

" suspects".insert(0 'the usual')
=> "the usual suspects"

"The case of the disappearing last letter".chop
=> "The case of the disappearing last lette"

"The mystery of the missing first letter".delete "T"
=> "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze(" ")
=> "Elementary, my dear Watson!"

"z".each_byte {|c| print c, ' ' }
=> 122 

"z".each_codepoint {|c| pint c, ' ' }
=> 122 

"How many times does the letter 'a' appear in this string?".count "a"
=> 4