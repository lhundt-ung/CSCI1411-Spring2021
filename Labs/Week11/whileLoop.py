i=0
while 1:
    print("===========")
    print("i="+str(i))
    if i > 0 and i < 10:
        i=i+5
        #continue
    elif i == 25:      
        break
        print(str(i+2))
    elif i%2 == 0:
        print("EVEN")
    elif i%2 == 1:
        print("ODD")
    
    i=i+1