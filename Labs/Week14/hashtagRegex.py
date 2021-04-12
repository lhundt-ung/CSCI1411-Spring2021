import re

#Regex to find #hashtags
regex = 

test_str = ("UNG staff and alumni are working to prevent the spread of COVID-19. As contact tracers and case investigators, they monitor and track people who have been exposed to or tested positive for COVID-19.\n"
	"#UNGleads #COVID-19 #UNGalumni #UNGyoungalumni\n"
	"https://t.co/Nxbt4gq9Gu")

matches = re.findall(regex,test_str)
print(matches)