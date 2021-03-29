import string
import crypt

# Create Rainbow Table Example
# 1. Print all combinations from aaa-zzz
# 2a. Store in a dictionary as hash:password --> {'wVJUqimh646':'aaa'}
# 2b. How many combinations should expect to see? 
lowercaseLetters = string.ascii_lowercase
uppercaseLetters = string.ascii_uppercase
salt = "HX"
hashDict = {}

print(lowercaseLetters[0])

#Your code here
for a in range(0,26):
    for b in range(0,26):
        for c in range (0,26):
           #print(lowercaseLetters[a] + lowercaseLetters[b] + lowercaseLetters[c])
           pw = lowercaseLetters[a] + lowercaseLetters[b] + lowercaseLetters[c]
           hash = crypt.crypt(pw,salt)
           hashDict[hash] = pw

print(len(hashDict))

# 3. Iterate through dictionary and write keys and values to a rainbow file
#Example rainbox.txt:
# aaa,t9W1HQLMasY
# aab,mgIUVcfWzGo 
# ...

#Your code here
file = open("rainbow.txt",'w')

for pw,value in hashDict.items():
    file.writelines(pw + "," + value + "\n")

file.close()





# 4. How many combinations would we have for two letter salts?
11,881,376 lines

# 5. What would the rainbow file size be?
#300 KB ~ 15756 lines

11881376/15756 = 754
754*300KB = 226200KB = ~200MB

# 6. What would the rainbow file size be 
# using lowercase and Uppercase combinations?
~7.64GB


