import crypt

#Hashing function examples with SALT
password = "CS1411"
encrpytedPassword = crypt.crypt(password,"CS")
print("First encypted Password: ", encrpytedPassword)

password = "CS1412"
encrpytedPassword = crypt.crypt(password,"CS")
print("Second encypted Password: ", encrpytedPassword)
