#Type conversion Example
x = 15
str1 = "10"

#y = x + str1
y = x + int(str1)

#print("This is the value of y: " + y)
print("This is the value of y: ",y)


# Find the speed of an object
# It takes 3 hours to travel a total distance
# of 150 miles,what is the avg. speed? 
# Speed = distance / time

#distance = 150
#time = 3
#avgSpeed = distance/time
#print(avgSpeed)


inputDistance = input("Distance: ")
inputDistanceType = input("km or miles: ")
inputTime = input("Time (hrs): ")

if(inputDistanceType == "km"):
    #Convert km to miles
    print("inputDistance Before",type(inputDistance))
    inputDistance = int(inputDistance)*.621
    print("inputDistance After",type(inputDistance))
    print("The average speed is ",inputDistance/int(inputTime)," miles per hour.")
else:
    print("The average speed is ",int(inputDistance)/int(inputTime)," miles per hour.")
