#Reverse Cipher Example
import string
import time

message = input("What is the secret message? ")

def encrypt(message,decrypt):
    #Small pause for dramatic effect
    if(decrypt):
        print("******Decrypting******")
    else:
        print("******Encrypting******")
    time.sleep(5)


    encryptedMessage = ""
    for letter in message:
        encryptedMessage = letter + encryptedMessage

    if(decrypt):
        print("Decrypted: ",encryptedMessage)
    else:
        print("Encrypted: ",encryptedMessage)
    return encryptedMessage

encryptedMessage = encrypt(message,False)
encrypt(encryptedMessage,True)