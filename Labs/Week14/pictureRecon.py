import urllib.request
import exifread

pictureFile = "photoTest.jpg"

urllib.request.urlretrieve("https://raw.githubusercontent.com/ianare/exif-samples/master/jpg/gps/DSCN0042.jpg", pictureFile)


# Open image file for reading (binary mode)
f = open(pictureFile, 'rb')

# Return Exif tags
tags = exifread.process_file(f)
print(tags)