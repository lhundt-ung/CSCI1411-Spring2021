#Encryption (Very Basic Example)
import string
import time

message = input("What is the secret message? ")
clicks = input("Number of clicks? ")

def convertLetter(letter,number):   
    letterList = list(string.ascii_lowercase + string.ascii_uppercase + " ")
    currentIndex = letterList.index(letter)

    newIndex = currentIndex + number

    if newIndex > 52:
        newIndex = (currentIndex - 52)
    elif newIndex < 0:
        newIndex = (52 - currentIndex)

    newLetter = letterList[newIndex]

    return newLetter

def encrypt(message,clicks):
    print("******Encrypting******")
    time.sleep(5)
    encryptedMessage = ""
    for letter in message:
        encryptedMessage += convertLetter(letter,clicks)
    print("Encrypted: ",encryptedMessage)
    return encryptedMessage

def decrpyt(message,clicks):
    print("******Decrypting******")
    time.sleep(5)
    decrpytedMessage = ""
    for letter in message:
        decrpytedMessage += convertLetter(letter,-clicks)

    print("Decrypted: ",decrpytedMessage)
    return decrpytedMessage

encryptedMessage = encrypt(message,int(clicks))
decrpyt(encryptedMessage, int(clicks))